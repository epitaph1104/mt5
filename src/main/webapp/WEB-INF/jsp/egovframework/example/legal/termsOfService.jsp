<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<jsp:include page="../frame/bytroxHeader.jsp" />
<main class="terms-page">
  <section class="legal-hero">
    <div class="narrow">
      <h1>
        <spring:message code="bytrox.legal.termsofservice.001" />
      </h1>
      <p>
        <spring:message code="bytrox.legal.termsofservice.002" />
      </p>
      <div class="legal-hero-actions"><a class="btn btn-light" href="${ctx}/${siteLang}/account-types">
          <spring:message code="bytrox.legal.termsofservice.003" />
        </a><a class="btn btn-outline" href="#">
          <spring:message code="bytrox.legal.termsofservice.004" />
        </a></div>
    </div>
  </section>
  <section class="legal-documents">
    <div class="policy-container">
      <p class="legal-kicker">
        <spring:message code="bytrox.legal.termsofservice.005" />
      </p>
      <h2>
        <spring:message code="bytrox.legal.termsofservice.006" />
      </h2>
      <div class="document-list">
        <article><span>
            <spring:message code="bytrox.legal.termsofservice.007" />
          </span><a class="btn btn-primary" href="${ctx}/pdf/privacy-policy_bytrox.pdf" download>
            <spring:message code="bytrox.legal.termsofservice.008" />
          </a></article>
        <article><span>
            <spring:message code="bytrox.legal.termsofservice.009" />
          </span><a class="btn btn-primary" href="${ctx}/pdf/privacy-policy_bytrox.pdf" download>
            <spring:message code="bytrox.legal.termsofservice.010" />
          </a></article>
        <article><span>
            <spring:message code="bytrox.legal.termsofservice.011" />
          </span><a class="btn btn-primary" href="${ctx}/pdf/privacy-policy_bytrox.pdf" download>
            <spring:message code="bytrox.legal.termsofservice.012" />
          </a></article>
      </div>
      <p class="legal-kicker">
        <spring:message code="bytrox.legal.termsofservice.013" />
      </p>
      <h2>
        <spring:message code="bytrox.legal.termsofservice.014" />
      </h2>
      <div class="document-list">
        <article><span>
            <spring:message code="bytrox.legal.termsofservice.015" />
          </span><a class="btn btn-primary" href="${ctx}/pdf/privacy-policy_bytrox.pdf" download>
            <spring:message code="bytrox.legal.termsofservice.016" />
          </a></article>
        <article><span>
            <spring:message code="bytrox.legal.termsofservice.017" />
          </span><a class="btn btn-primary" href="${ctx}/pdf/privacy-policy_bytrox.pdf" download>
            <spring:message code="bytrox.legal.termsofservice.018" />
          </a></article>
      </div>
    </div>
  </section>
  <section class="dispute-section">
    <div class="policy-container">
      <h2>
        <spring:message code="bytrox.legal.termsofservice.019" />
      </h2>
      <p>
        <spring:message code="bytrox.legal.termsofservice.020" /> <a href="${ctx}/${siteLang}/cs/contactUS">
          <spring:message code="bytrox.legal.termsofservice.021" />
        </a>
        <spring:message code="bytrox.legal.termsofservice.022" />
      </p>
      <p>
        <spring:message code="bytrox.legal.termsofservice.023" />
      </p>
      <p>
        <spring:message code="bytrox.legal.termsofservice.024" /> <a href="mailto:support@bytroxfx.com">
          <spring:message code="bytrox.legal.termsofservice.025" />
        </a>.
      </p>
      <p>
        <spring:message code="bytrox.legal.termsofservice.026" />
      </p>
    </div>
  </section>
</main>
<jsp:include page="../frame/bytroxFooter.jsp" />
