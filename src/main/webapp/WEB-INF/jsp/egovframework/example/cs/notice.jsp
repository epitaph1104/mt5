<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<jsp:include page="../frame/bytroxHeader.jsp" />
<jsp:useBean id="now" class="java.util.Date" />
<main>
  <section class="notice-wrap">
    <div class="narrow">
      <h1 class="section-title">
        <spring:message code="bytrox.cs.notice.001" />
      </h1>
      <section class="notice-list">
        <c:choose>
          <c:when test="${empty list}">
            <article class="notice-row">
              <div>-</div>
              <span>
                <spring:message code="bytrox.cs.notice.002" />
              </span>
              <time></time>
            </article>
          </c:when>
          <c:otherwise>
            <c:forEach var="item" items="${list}">
              <!-- Notice list item -->
              <article class="notice-row new notice-toggle" data-target="notice-detail-${item.idx}" role="button" tabindex="0"
                aria-expanded="false">
                <div>
                  <c:choose>
                    <c:when test="${now.time - item.ndate.time < 7 * 24 * 60 * 60 * 1000}">
                      <span class="badge-new">
                        <spring:message code="bytrox.cs.notice.003" />
                      </span>
                    </c:when>
                    <c:otherwise>
                      <span class="badge-new">
                        <spring:message code="bytrox.cs.notice.004" />
                      </span>
                    </c:otherwise>
                  </c:choose>
                </div>
                <a href="#notice-detail-${item.idx}" class="notice-title" onclick="return false;">
                  <c:out value="${item.title}" />
                </a>
                <time>
                  <fmt:formatDate value="${item.ndate}" pattern="yyyy-MM-dd" />
                </time>
              </article>
              <!-- Notice details -->
              <div id="notice-detail-${item.idx}" class="notice-detail">
                <div class="notice-detail-inner">
                  <c:out value="${item.text}" escapeXml="false" />
                </div>
              </div>
            </c:forEach>
          </c:otherwise>
        </c:choose>
      </section>
      <nav class="pagination">
        <ui:pagination paginationInfo="${pi}" jsFunction="page" type="user" />
      </nav>
    </div>
  </section>
  <section class="cta">
    <div class="container">
      <h2>
        <spring:message code="bytrox.cs.notice.005" />
      </h2>
      <p>
        <spring:message code="bytrox.cs.notice.006" />
      </p>
      <a class="btn btn-light" href="${ctx}/${siteLang}/account-types">
        <spring:message code="bytrox.cs.notice.007" />
      </a>
      <a class="btn" style="background: rgba(255, 255, 255, .2); color: #fff" href="#">
        <spring:message code="bytrox.cs.notice.008" />
      </a>
    </div>
  </section>
</main>
<script>
  function page(pageIndex) {
    window.location.href = '${ctx}/${siteLang}/cs/notice?pageIndex=' +
      pageIndex;
  }
</script>
<jsp:include page="../frame/bytroxFooter.jsp" />
