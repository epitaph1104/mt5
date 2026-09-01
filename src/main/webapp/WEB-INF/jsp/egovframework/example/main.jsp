<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="frame/bytroxHeader.jsp" />
<main>
  <section class="hero-home">
    <div class="container hero-inner">
      <div class="eyebrow">
        <spring:message code="bytrox.main.001" />
      </div>
      <h1>
        <spring:message code="bytrox.main.002" /><br><span>
          <spring:message code="bytrox.main.003" />
        </span>
      </h1>
      <p class="hero-sub">
        <spring:message code="bytrox.main.004" /> <span class="green">
          <spring:message code="bytrox.main.005" />
        </span>
        <spring:message code="bytrox.main.006" />
      </p>
      <div class="hero-stats">
        <div class="hero-stat"><b>0.0</b><strong>
            <spring:message code="bytrox.main.007" />
          </strong><small>
            <spring:message code="bytrox.main.008" />
          </small></div>
        <div class="hero-stat"><b>
            <spring:message code="bytrox.main.009" />
          </b><strong>
            <spring:message code="bytrox.main.010" />
          </strong><small>
            <spring:message code="bytrox.main.011" />
          </small></div>
        <div class="hero-stat"><b>100+</b><strong>
            <spring:message code="bytrox.main.012" />
          </strong><small>
            <spring:message code="bytrox.main.013" />
          </small></div>
        <div class="hero-stat"><b>1:500</b><strong>
            <spring:message code="bytrox.main.014" />
          </strong><small>
            <spring:message code="bytrox.main.015" />
          </small></div>
      </div>
      <div class="hero-actions"><a class="btn btn-primary" href="${ctx}/${siteLang}/account-types">
          <spring:message code="bytrox.main.016" />
        </a><a class="btn btn-dark" href="#">
          <spring:message code="bytrox.main.017" />
        </a></div>
      <div class="hero-foot">
        <spring:message code="bytrox.main.018" /><br>
        <spring:message code="bytrox.main.019" />
      </div>
    </div>
  </section>
  <section class="confidence">
    <div class="narrow">
      <h2 class="section-title">
        <spring:message code="bytrox.main.020" />
      </h2>
      <p class="section-lead">
        <spring:message code="bytrox.main.021" />
      </p>
      <div class="confidence-grid">
        <div class="confidence-list">
          <article class="confidence-item">
            <div class="square-icon"><img src="${ctx}/images/bolt.svg" alt=""></div>
            <div>
              <h3>
                <spring:message code="bytrox.main.022" />
              </h3>
              <p>
                <spring:message code="bytrox.main.023" />
              </p><small class="confidence-benefits"><span><img src="${ctx}/images/check.svg" alt="">
                  <spring:message code="bytrox.main.024" />
                </span><span><img src="${ctx}/images/check.svg" alt="">
                  <spring:message code="bytrox.main.025" />
                </span></small>
            </div>
          </article>
          <article class="confidence-item">
            <div class="square-icon"><img src="${ctx}/images/dollar.svg" alt=""></div>
            <div>
              <h3>
                <spring:message code="bytrox.main.026" />
              </h3>
              <p>
                <spring:message code="bytrox.main.027" />
              </p><small class="confidence-benefits"><span><img src="${ctx}/images/check.svg" alt="">
                  <spring:message code="bytrox.main.028" />
                </span><span><img src="${ctx}/images/check.svg" alt="">
                  <spring:message code="bytrox.main.029" />
                </span></small>
            </div>
          </article>
          <article class="confidence-item">
            <div class="square-icon"><img src="${ctx}/images/shield.svg" alt=""></div>
            <div>
              <h3>
                <spring:message code="bytrox.main.030" />
              </h3>
              <p>
                <spring:message code="bytrox.main.031" />
              </p><small class="confidence-benefits"><span><img src="${ctx}/images/check.svg" alt="">
                  <spring:message code="bytrox.main.032" />
                </span><span><img src="${ctx}/images/check.svg" alt="">
                  <spring:message code="bytrox.main.033" />
                </span></small>
            </div>
          </article>
        </div>
        <aside class="journey-card">
          <div class="journey-icon"><img src="${ctx}/images/journey-arrow.svg" alt=""></div>
          <h3>
            <spring:message code="bytrox.main.034" />
          </h3>
          <p>
            <spring:message code="bytrox.main.035" />
          </p>
          <ul>
            <li>
              <spring:message code="bytrox.main.036" />
            </li>
            <li>
              <spring:message code="bytrox.main.037" />
            </li>
            <li>
              <spring:message code="bytrox.main.038" />
            </li>
          </ul><a class="btn btn-light" href="${ctx}/${siteLang}/account-types">
            <spring:message code="bytrox.main.039" />
          </a><a class="btn" style="background:rgba(255,255,255,.18);color:#fff" href="#">
            <spring:message code="bytrox.main.040" />
          </a>
        </aside>
      </div>
      <div class="stat-row">
        <div class="stat-box"><b>100+</b><small>
            <spring:message code="bytrox.main.041" />
          </small></div>
        <div class="stat-box"><b>24/5</b><small>
            <spring:message code="bytrox.main.042" />
          </small></div>
        <div class="stat-box"><b>0.0</b><small>
            <spring:message code="bytrox.main.043" />
          </small></div>
        <div class="stat-box"><b>1:500</b><small>
            <spring:message code="bytrox.main.044" />
          </small></div>
      </div>
    </div>
  </section>
  <section class="mt5-power">
    <div class="narrow"><img class="mt5-devices" src="${ctx}/images/mt5-devices.png" alt="MetaTrader 5 on multiple devices">
      <h2 class="section-title">
        <spring:message code="bytrox.main.045" /><br>
        <spring:message code="bytrox.main.046" />
      </h2>
      <div class="power-grid">
        <article class="power-item"><img src="${ctx}/images/timer.svg" alt="">
          <p>
            <spring:message code="bytrox.main.047" />
          </p>
        </article>
        <article class="power-item"><img src="${ctx}/images/bars.svg" alt="">
          <p>
            <spring:message code="bytrox.main.048" />
          </p>
        </article>
        <article class="power-item"><img src="${ctx}/images/clock.svg" alt="">
          <p>
            <spring:message code="bytrox.main.049" />
          </p>
        </article>
        <article class="power-item"><img src="${ctx}/images/click.svg" alt="">
          <p>
            <spring:message code="bytrox.main.050" />
          </p>
        </article>
        <article class="power-item"><img src="${ctx}/images/trend.svg" alt="">
          <p>
            <spring:message code="bytrox.main.051" />
          </p>
        </article>
        <article class="power-item"><img src="${ctx}/images/gear.svg" alt="">
          <p>
            <spring:message code="bytrox.main.052" />
          </p>
        </article>
        <article class="power-item"><img src="${ctx}/images/signal.svg" alt="">
          <p>
            <spring:message code="bytrox.main.053" />
          </p>
        </article>
        <article class="power-item"><img src="${ctx}/images/globe.svg" alt="">
          <p>
            <spring:message code="bytrox.main.054" />
          </p>
        </article>
      </div>
      <div class="mt40"><a class="btn btn-primary" href="${ctx}/${siteLang}/metaTrader5">
          <spring:message code="bytrox.main.055" />
        </a></div>
    </div>
  </section>
  <section class="growth">
    <div class="narrow">
      <div class="growth-card">
        <div class="growth-copy">
          <h2>
            <spring:message code="bytrox.main.056" /><br><span class="green">
              <spring:message code="bytrox.main.057" />
            </span>
          </h2>
          <p>
            <spring:message code="bytrox.main.058" />
          </p>
          <h3>
            <spring:message code="bytrox.main.059" />
          </h3>
          <p>
            <spring:message code="bytrox.main.060" />
          </p>
				<div class="store-badges">
					<a href="https://apps.apple.com/us/app/metatrader-5/id413251709" aria-label="Download on the App Store"><img
						src="${ctx}/images/app-store-badge.svg"
						alt="Download on the App Store"></a>
					<a href="https://play.google.com/store/apps/details?id=net.metaquotes.metatrader5&pcampaignid=web_share"
						aria-label="Get it on Google Play"><img
						src="${ctx}/images/google-play-badge.svg"
						alt="Get it on Google Play"></a>
				</div>
			</div>
        <div class="growth-image"><img src="${ctx}/images/trading-app.png" alt="ByTrox mobile trading application"></div>
      </div>
    </div>
  </section>
  <section class="howto">
    <div class="narrow">
      <div class="howto-grid">
        <div class="howto-copy">
          <h2>
            <spring:message code="bytrox.main.061" /> <span class="green">
              <spring:message code="bytrox.main.062" />
            </span>
          </h2>
          <p>
            <spring:message code="bytrox.main.063" />
          </p><a class="btn btn-primary mt24" href="${ctx}/${siteLang}/account-types">
            <spring:message code="bytrox.main.064" />
          </a>
        </div>
        <div class="howto-visual">
          <article class="how-card"><b class="num">1</b>
            <div>
              <h3>
                <spring:message code="bytrox.main.065" />
              </h3>
              <p>
                <spring:message code="bytrox.main.066" />
              </p>
            </div>
          </article>
          <article class="how-card"><b class="num">2</b>
            <div>
              <h3>
                <spring:message code="bytrox.main.067" />
              </h3>
              <p>
                <spring:message code="bytrox.main.068" />
              </p>
            </div>
          </article>
          <article class="how-card"><b class="num">3</b>
            <div>
              <h3>
                <spring:message code="bytrox.main.069" />
              </h3>
              <p>
                <spring:message code="bytrox.main.070" />
              </p>
            </div>
          </article>
        </div>
      </div>
      <section class="cta home-cta">
        <div>
          <h2>
            <spring:message code="bytrox.main.071" />
          </h2>
          <p>
            <spring:message code="bytrox.main.072" />
          </p>
        </div><a class="btn btn-light" href="${ctx}/${siteLang}/account-types">
          <spring:message code="bytrox.main.073" />
        </a>
      </section>
    </div>
  </section>
</main>
<jsp:include page="frame/bytroxFooter.jsp" />
