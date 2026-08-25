<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<jsp:include page="../frame/bytroxHeader.jsp" />
<main><section class="notice-wrap"><div class="narrow"><h1 class="section-title">NOTICE</h1><nav class="notice-tabs"><a class="active">category1</a><a>category2</a><a>category3</a><a>category4</a><a>category5</a></nav><section class="notice-list">
  <c:choose>
    <c:when test="${empty list}"><article class="notice-row"><div>-</div><span>No notices are available.</span><time></time></article></c:when>
    <c:otherwise>
      <c:forEach var="item" items="${list}">
        <article class="notice-row new"><div><span class="badge-new">NEW</span></div><a href="#n_${item.idx}"><c:out value="${item.title}" /></a><time><fmt:formatDate value="${item.ndate}" pattern="yyyy-MM-dd" /></time></article>
      </c:forEach>
    </c:otherwise>
  </c:choose>
</section><nav class="pagination"><ui:pagination paginationInfo="${pi}" jsFunction="page" type="user"/></nav></div></section><section class="cta"><div class="container"><h2>Ready to Start Metals Trading?</h2><p>Diversify your portfolio with precious metals trading and benefit from safe-haven assets during market volatility.</p><a class="btn btn-light" href="${ctx}/${siteLang}/account-types">Open Live Account</a><a class="btn" style="background:rgba(255,255,255,.2);color:#fff" href="#">Try free demo</a></div></section></main>
<script>
function page(pageIndex) {
  window.location.href = '${ctx}/${siteLang}/cs/notice?pageIndex=' + pageIndex;
}
</script><jsp:include page="../frame/bytroxFooter.jsp" />
