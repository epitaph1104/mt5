<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../frame/bytroxHeader.jsp" />
<main>
  <section class="notice-wrap"><div class="narrow">
    <h1 class="section-title">NOTICE</h1>
    <nav class="notice-tabs" aria-label="Notice categories"><a class="active" href="#">category1</a><a href="#">category2</a><a href="#">category3</a><a href="#">category4</a><a href="#">category5</a></nav>
    <section class="notice-list" aria-label="Notice list">
      <c:forEach begin="1" end="3"><article class="notice-row new"><div><span class="badge-new">NEW</span></div><a href="#">Please complete the form below and a member of our support team</a><time>2024-01-01</time></article></c:forEach>
      <c:forEach begin="1" end="8" var="number"><article class="notice-row"><div>${number}</div><a href="#">Please complete the form below and a member of our support team</a><time>2024-01-01</time></article></c:forEach>
    </section>
    <nav class="pagination" aria-label="Notice pages"><a href="#" aria-label="Previous page">&#9664;</a><a class="active" href="#">1</a><a href="#">2</a><a href="#">3</a><a href="#">4</a><a href="#">5</a><a href="#">6</a><a href="#" aria-label="Next page">&#9654;</a></nav>
  </div></section>
  <section class="cta"><div class="container"><h2>Ready to Start Metals Trading?</h2><p>Diversify your portfolio with precious metals trading and benefit from safe-haven assets during market volatility.</p><a class="btn btn-light" href="${ctx}/${siteLang}/account-types">Open Live Account</a><a class="btn cta-demo" href="#">Try free demo</a></div></section>
</main>
<jsp:include page="../frame/bytroxFooter.jsp" />
