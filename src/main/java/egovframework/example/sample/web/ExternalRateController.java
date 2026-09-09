package egovframework.example.sample.web;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.math.BigDecimal;
import java.math.MathContext;
import java.math.RoundingMode;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ExternalRateController {

    // CRM에 등록된 API Key
    private static final String CRM_API_KEY =
            "e49e2f12-4f58-4b59-bb6f-939f9d1fcb04";

    // Spread
    // 0 = 업비트/빗썸 시세 그대로
    // 100 = 1%
    private static final int SPREAD_BPS = 0;

    private static final String UPBIT =
            "https://api.upbit.com/v1/ticker?markets=KRW-USDT";

    private static final String BITHUMB =
            "https://api.bithumb.com/public/ticker/USDT_KRW";

    // 원본과 동일
    private static final long CACHE_MS = 5000L;
    private static final int TIMEOUT_MS = 3000;

    private static final Map<String, String> ALIAS;

    static {
        Map<String, String> m = new HashMap<String, String>();

        m.put("USDT", "USDT");
        m.put("TETHER", "USDT");
        m.put("USDT-TRC20", "USDT");
        m.put("USDTTRC20", "USDT");
        m.put("USDT-ERC20", "USDT");
        m.put("TRC20", "USDT");

        m.put("KRW", "KRW");
        m.put("WON", "KRW");

        ALIAS = Collections.unmodifiableMap(m);
    }

    private final AtomicReference<Quote> cache =
            new AtomicReference<Quote>(null);

    @ResponseBody
    @RequestMapping(
            value = "/externalRate",
            produces = "application/json; charset=utf-8"
    )
    public String externalRate(
            HttpServletRequest request,
            HttpServletResponse response) {

        response.setHeader("Cache-Control", "no-store");

        try {

            // ========================================
            // 1. API Key 검증
            // ========================================

            String key = request.getHeader("key");

            if (CRM_API_KEY == null
                    || CRM_API_KEY.isEmpty()
                    || !constantTimeEquals(CRM_API_KEY, key)) {

                response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);

                return error("unauthorized");
            }


            // ========================================
            // 2. 통화 확인
            // ========================================

            String source = normalize(
                    request.getParameter("source_currency")
            );

            String target = normalize(
                    request.getParameter("target_currency")
            );


            if (source == null || target == null) {

                response.setStatus(HttpServletResponse.SC_BAD_REQUEST);

                return error(
                        "source_currency and target_currency are required"
                );
            }


            // 동일 통화
            if (source.equals(target)) {

                response.setStatus(HttpServletResponse.SC_OK);

                return ok(BigDecimal.ONE);
            }


            boolean supported =
                    ("USDT".equals(source) && "KRW".equals(target))
                    ||
                    ("KRW".equals(source) && "USDT".equals(target));


            if (!supported) {

                response.setStatus(HttpServletResponse.SC_BAD_REQUEST);

                return error(
                        "unsupported pair " + source + "/" + target
                );
            }


            // ========================================
            // 3. 시세 조회
            // ========================================

            Quote quote;

            try {

                quote = getUsdtKrw();

            } catch (Exception e) {

                e.printStackTrace();

                response.setStatus(
                        HttpServletResponse.SC_SERVICE_UNAVAILABLE
                );

                return error("rate_source_unavailable");
            }


            // ========================================
            // 4. 환율 방향 적용
            // ========================================

            BigDecimal mid = quote.price;

            BigDecimal raw;

            if ("USDT".equals(source)) {

                // USDT -> KRW
                raw = mid;

            } else {

                // KRW -> USDT
                raw = BigDecimal.ONE.divide(
                        mid,
                        MathContext.DECIMAL64
                );
            }


            // ========================================
            // 5. Spread 적용
            // ========================================

            BigDecimal factor =
                    BigDecimal.ONE.subtract(
                            BigDecimal.valueOf(SPREAD_BPS)
                                    .divide(
                                            BigDecimal.valueOf(10000L),
                                            MathContext.DECIMAL64
                                    )
                    );


            BigDecimal rate =
                    raw.multiply(
                            factor,
                            MathContext.DECIMAL64
                    )
                    .setScale(
                            10,
                            RoundingMode.HALF_UP
                    )
                    .stripTrailingZeros();


            // 1350 -> 1.35E+3 방지
            if (rate.scale() < 0) {

                rate = rate.setScale(
                        0,
                        RoundingMode.UNNECESSARY
                );
            }


            if (rate.signum() <= 0) {

                response.setStatus(
                        HttpServletResponse.SC_SERVICE_UNAVAILABLE
                );

                return error("rate_calculation_failed");
            }


            // ========================================
            // 6. 정상 응답
            // ========================================

            response.setStatus(HttpServletResponse.SC_OK);

            response.setHeader(
                    "X-Rate-Source",
                    quote.source
            );

            return ok(rate);


        } catch (Exception e) {

            e.printStackTrace();

            response.setStatus(
                    HttpServletResponse.SC_SERVICE_UNAVAILABLE
            );

            return error("rate_source_unavailable");
        }
    }


    // ============================================================
    // 시세 조회
    // ============================================================

    private Quote getUsdtKrw() throws Exception {

        Quote cached = cache.get();

        if (cached != null
                && System.currentTimeMillis() - cached.at < CACHE_MS) {

            return new Quote(
                    cached.price,
                    cached.source + "-cached",
                    cached.at
            );
        }


        Quote fresh;

        try {

            fresh = fromUpbit();

        } catch (Exception e) {

            System.out.println(
                    "[rate] upbit failed, falling back to bithumb : "
                            + e.getMessage()
            );

            fresh = fromBithumb();
        }


        cache.set(fresh);

        return fresh;
    }


    // ============================================================
    // 업비트
    // ============================================================

    private Quote fromUpbit() throws Exception {

        String raw = httpGet(UPBIT);

        JSONParser parser = new JSONParser();

        Object parsed = parser.parse(raw);

        if (!(parsed instanceof org.json.simple.JSONArray)) {

            throw new IllegalStateException(
                    "upbit bad payload"
            );
        }


        org.json.simple.JSONArray array =
                (org.json.simple.JSONArray) parsed;


        if (array.size() == 0) {

            throw new IllegalStateException(
                    "upbit bad payload"
            );
        }


        JSONObject ticker =
                (JSONObject) array.get(0);


        Object priceObj =
                ticker.get("trade_price");


        BigDecimal price =
                requirePositive(
                        priceObj != null
                                ? priceObj.toString()
                                : null,
                        "upbit"
                );


        return new Quote(
                price,
                "upbit",
                System.currentTimeMillis()
        );
    }


    // ============================================================
    // 빗썸
    // ============================================================

    private Quote fromBithumb() throws Exception {

        String raw = httpGet(BITHUMB);

        JSONParser parser = new JSONParser();

        JSONObject root =
                (JSONObject) parser.parse(raw);


        String status =
                root.get("status") != null
                        ? root.get("status").toString()
                        : null;


        if (!"0000".equals(status)) {

            throw new IllegalStateException(
                    "bithumb status " + status
            );
        }


        JSONObject data =
                (JSONObject) root.get("data");


        if (data == null) {

            throw new IllegalStateException(
                    "bithumb bad payload"
            );
        }


        Object priceObj =
                data.get("closing_price");


        BigDecimal price =
                requirePositive(
                        priceObj != null
                                ? priceObj.toString()
                                : null,
                        "bithumb"
                );


        return new Quote(
                price,
                "bithumb",
                System.currentTimeMillis()
        );
    }


    // ============================================================
    // HTTP GET
    // ============================================================

    private String httpGet(String urlStr) throws Exception {

        HttpURLConnection conn =
                (HttpURLConnection)
                        new URL(urlStr).openConnection();

        try {

            conn.setRequestMethod("GET");

            conn.setConnectTimeout(TIMEOUT_MS);
            conn.setReadTimeout(TIMEOUT_MS);

            conn.setRequestProperty(
                    "Accept",
                    "application/json"
            );

            conn.setRequestProperty(
                    "User-Agent",
                    "bytrox-rate/1.0"
            );


            int status =
                    conn.getResponseCode();


            if (status != 200) {

                throw new IllegalStateException(
                        "http "
                                + status
                                + " from "
                                + urlStr
                );
            }


            InputStream in =
                    conn.getInputStream();


            ByteArrayOutputStream buf =
                    new ByteArrayOutputStream();


            byte[] chunk =
                    new byte[4096];


            int n;


            while ((n = in.read(chunk)) != -1) {

                buf.write(
                        chunk,
                        0,
                        n
                );
            }


            in.close();


            return new String(
                    buf.toByteArray(),
                    StandardCharsets.UTF_8
            );


        } finally {

            conn.disconnect();
        }
    }


    // ============================================================
    // 값 검증
    // ============================================================

    private BigDecimal requirePositive(
            String raw,
            String who) {

        if (raw == null || raw.isEmpty()) {

            throw new IllegalStateException(
                    who + " bad payload"
            );
        }


        BigDecimal value =
                new BigDecimal(raw);


        if (value.signum() <= 0) {

            throw new IllegalStateException(
                    who + " non-positive price"
            );
        }


        return value;
    }


    // ============================================================
    // 통화 코드 normalize
    // ============================================================

    private String normalize(String code) {

        if (code == null) {

            return null;
        }


        String up =
                code.trim().toUpperCase();


        if (up.isEmpty()) {

            return null;
        }


        String mapped =
                ALIAS.get(up);


        return mapped != null
                ? mapped
                : up;
    }


    // ============================================================
    // API Key 비교
    // ============================================================

    private boolean constantTimeEquals(
            String expected,
            String actual) {

        if (actual == null) {

            return false;
        }


        return MessageDigest.isEqual(
                expected.getBytes(StandardCharsets.UTF_8),
                actual.getBytes(StandardCharsets.UTF_8)
        );
    }


    // ============================================================
    // 정상 JSON
    // ============================================================

    @SuppressWarnings("unchecked")
    private String ok(BigDecimal rate) {

        JSONObject obj =
                new JSONObject();

        obj.put(
                "rate",
                rate
        );

        return obj.toJSONString();
    }


    // ============================================================
    // 에러 JSON
    // ============================================================

    @SuppressWarnings("unchecked")
    private String error(String message) {

        JSONObject obj =
                new JSONObject();

        obj.put(
                "error",
                message
        );

        return obj.toJSONString();
    }


    // ============================================================
    // Cache 객체
    // ============================================================

    private static class Quote {

        private final BigDecimal price;

        private final String source;

        private final long at;


        private Quote(
                BigDecimal price,
                String source,
                long at) {

            this.price = price;

            this.source = source;

            this.at = at;
        }
    }
}