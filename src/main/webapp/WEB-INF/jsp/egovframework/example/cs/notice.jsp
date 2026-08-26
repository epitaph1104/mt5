<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<jsp:include page="../frame/bytroxHeader.jsp" />
<jsp:useBean id="now" class="java.util.Date" />
<main>
<section class="notice-wrap">
    <div class="narrow">
        <h1 class="section-title">NOTICE</h1>
        <section class="notice-list">
            <c:choose>
                <c:when test="${empty list}">
                    <article class="notice-row">
                        <div>-</div>
                        <span>No notices are available.</span>
                        <time></time>
                    </article>
                </c:when>
                <c:otherwise>

                    <c:forEach var="item" items="${list}">
                        <!-- 공지 목록 -->
                        <article
                            class="notice-row new notice-toggle"
                            data-target="notice-detail-${item.idx}"
                            role="button"
                            tabindex="0"
                            aria-expanded="false"
                        >
                            <div>
                                <c:choose>
                                    <c:when
                                        test="${now.time - item.ndate.time < 7 * 24 * 60 * 60 * 1000}">

                                        <span class="badge-new">NEW</span>

                                    </c:when>

                                    <c:otherwise>

                                        <span class="badge-new">Notice</span>

                                    </c:otherwise>

                                </c:choose>
                            </div>

                            <a href="#notice-detail-${item.idx}"
                               class="notice-title"
                               onclick="return false;">

                                <c:out value="${item.title}" />

                            </a>

                            <time>
                                <fmt:formatDate
                                    value="${item.ndate}"
                                    pattern="yyyy-MM-dd"
                                />
                            </time>

                        </article>


                        <!-- 공지 상세내용 -->
                        <div
                            id="notice-detail-${item.idx}"
                            class="notice-detail"
                        >
                            <div class="notice-detail-inner">

                                <c:out
                                    value="${item.text}"
                                    escapeXml="false"
                                />

                            </div>
                        </div>

                    </c:forEach>

                </c:otherwise>

            </c:choose>

        </section>


        <nav class="pagination">

            <ui:pagination
                paginationInfo="${pi}"
                jsFunction="page"
                type="user"
            />

        </nav>

    </div>

</section>


<section class="cta">

    <div class="container">

        <h2>Ready to Start Metals Trading?</h2>

        <p>
            Diversify your portfolio with precious metals trading and
            benefit from safe-haven assets during market volatility.
        </p>

        <a
            class="btn btn-light"
            href="${ctx}/${siteLang}/account-types"
        >
            Open Live Account
        </a>

        <a
            class="btn"
            style="background: rgba(255, 255, 255, .2); color: #fff"
            href="#"
        >
            Try free demo
        </a>

    </div>

</section>

</main>


<style>

/* 목록 전체를 클릭 가능하게 */
.notice-toggle {
    cursor: pointer;
}


/* 상세내용 기본적으로 숨김 */
.notice-detail {
    display: none;
    background: #f8f8f8;
    border-bottom: 1px solid #e5e5e5;
}


/* 상세내용 내부 */
.notice-detail-inner {
    padding: 30px 40px;
    font-size: 14px;
    line-height: 1.8;
    color: #444;
    word-break: break-word;
}


/* 에디터에서 들어온 p 태그 */
.notice-detail-inner p {
    margin: 0 0 12px;
}


/* 에디터에 삽입된 이미지 대응 */
.notice-detail-inner img {
    display: block;
    max-width: 100%;
    height: auto;
}


/* 펼쳐진 공지 */
.notice-row.notice-open {
    background: #f3f3f3;
}


/* 열린 상세 */
.notice-detail.open {
    display: block;
}

</style>


<script>

function page(pageIndex) {

    window.location.href =
        '${ctx}/${siteLang}/cs/notice?pageIndex=' + pageIndex;

}


document.addEventListener('DOMContentLoaded', function () {

    var toggles = document.querySelectorAll('.notice-toggle');


    toggles.forEach(function (toggle) {

        /*
         * 마우스 클릭
         */
        toggle.addEventListener('click', function () {

            toggleNotice(this);

        });


        /*
         * 키보드 접근
         */
        toggle.addEventListener('keydown', function (e) {

            if (e.key === 'Enter' || e.key === ' ') {

                e.preventDefault();

                toggleNotice(this);

            }

        });

    });


    function toggleNotice(currentToggle) {

        var targetId =
            currentToggle.getAttribute('data-target');

        var detail =
            document.getElementById(targetId);


        if (!detail) {
            return;
        }


        var isOpen =
            detail.classList.contains('open');


        /*
         * 현재 열려있는 공지 전부 닫기
         */
        toggles.forEach(function (toggle) {

            var id =
                toggle.getAttribute('data-target');

            var target =
                document.getElementById(id);


            toggle.classList.remove('notice-open');

            toggle.setAttribute(
                'aria-expanded',
                'false'
            );


            if (target) {
                target.classList.remove('open');
            }

        });


        /*
         * 기존에 닫혀있었다면 현재 공지만 열기
         */
        if (!isOpen) {

            currentToggle.classList.add('notice-open');

            currentToggle.setAttribute(
                'aria-expanded',
                'true'
            );

            detail.classList.add('open');

        }

    }

});

</script>


<jsp:include page="../frame/bytroxFooter.jsp" />