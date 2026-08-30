<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../frame/bytroxHeader.jsp" />
<main>
  <section class="page-space about-intro">
    <div class="narrow">
      <h1 class="section-title">
        <spring:message code="bytrox.company.company.001" />
      </h1>
      <p class="section-lead">
        <spring:message code="bytrox.company.company.002" />
      </p>
      <div class="about-features">
        <article class="about-feature"><img src="${ctx}/images/about-competitive.svg" alt="">
          <h3>
            <spring:message code="bytrox.company.company.003" />
          </h3>
          <p>
            <spring:message code="bytrox.company.company.004" />
          </p>
        </article>
        <article class="about-feature"><img src="${ctx}/images/about-transparent.svg" alt="">
          <h3>
            <spring:message code="bytrox.company.company.005" />
          </h3>
          <p>
            <spring:message code="bytrox.company.company.006" />
          </p>
        </article>
        <article class="about-feature"><img src="${ctx}/images/about-fast.svg" alt="">
          <h3>
            <spring:message code="bytrox.company.company.007" />
          </h3>
          <p>
            <spring:message code="bytrox.company.company.008" />
          </p>
        </article>
        <article class="about-feature"><img src="${ctx}/images/about-flexible.svg" alt="">
          <h3>
            <spring:message code="bytrox.company.company.009" />
          </h3>
          <p>
            <spring:message code="bytrox.company.company.010" />
          </p>
        </article>
      </div>
    </div>
  </section>
  <section class="section">
    <div class="narrow">
      <article class="partner-banner">
        <div>
          <h2>
            <spring:message code="bytrox.company.company.011" />
          </h2>
          <p>
            <spring:message code="bytrox.company.company.012" />
          </p>
        </div>
      </article>
    </div>
  </section>
  <section class="section">
    <div class="narrow about-power"><img src="${ctx}/images/about-power.png" alt="Trading on desktop and mobile">
      <h2 class="section-title">
        <spring:message code="bytrox.company.company.013" />
      </h2>
      <div class="power-grid">
        <article class="power-item"><img src="${ctx}/images/about-timer.svg" alt="">
          <h3>
            <spring:message code="bytrox.company.company.014" />
          </h3>
          <p>
            <spring:message code="bytrox.company.company.015" />
          </p>
        </article>
        <article class="power-item"><img src="${ctx}/images/about-bars.svg" alt="">
          <h3>
            <spring:message code="bytrox.company.company.016" />
          </h3>
          <p>
            <spring:message code="bytrox.company.company.017" />
          </p>
        </article>
        <article class="power-item"><img src="${ctx}/images/about-clock.svg" alt="">
          <h3>
            <spring:message code="bytrox.company.company.018" />
          </h3>
          <p>
            <spring:message code="bytrox.company.company.019" />
          </p>
        </article>
        <article class="power-item"><img src="${ctx}/images/about-click.svg" alt="">
          <h3>
            <spring:message code="bytrox.company.company.020" />
          </h3>
          <p>
            <spring:message code="bytrox.company.company.021" />
          </p>
        </article>
        <article class="power-item"><img src="${ctx}/images/about-trend.svg" alt="">
          <h3>
            <spring:message code="bytrox.company.company.022" />
          </h3>
          <p>
            <spring:message code="bytrox.company.company.023" />
          </p>
        </article>
        <article class="power-item"><img src="${ctx}/images/about-gear.svg" alt="">
          <h3>
            <spring:message code="bytrox.company.company.024" />
          </h3>
          <p>
            <spring:message code="bytrox.company.company.025" />
          </p>
        </article>
        <article class="power-item"><img src="${ctx}/images/about-signal.svg" alt="">
          <h3>
            <spring:message code="bytrox.company.company.026" />
          </h3>
          <p>
            <spring:message code="bytrox.company.company.027" />
          </p>
        </article>
        <article class="power-item"><img src="${ctx}/images/about-globe.svg" alt="">
          <h3>
            <spring:message code="bytrox.company.company.028" />
          </h3>
          <p>
            <spring:message code="bytrox.company.company.029" />
          </p>
        </article>
      </div><a class="btn btn-primary mt40" href="${ctx}/${siteLang}/metaTrader5">
        <spring:message code="bytrox.company.company.030" />
      </a>
    </div>
  </section>
  <section class="section">
    <div class="narrow">
      <h2 class="section-title">
        <spring:message code="bytrox.company.company.031" />
      </h2>
      <div class="opening-3">
        <article><img src="${ctx}/images/about-register.svg" alt="">
          <h3>
            <spring:message code="bytrox.company.company.032" />
          </h3>
          <p>
            <spring:message code="bytrox.company.company.033" />
          </p>
        </article>
        <article><img src="${ctx}/images/about-transparent.svg" alt="">
          <h3>
            <spring:message code="bytrox.company.company.034" />
          </h3>
          <p>
            <spring:message code="bytrox.company.company.035" />
          </p>
        </article>
        <article><img src="${ctx}/images/about-trade.svg" alt="">
          <h3>
            <spring:message code="bytrox.company.company.036" />
          </h3>
          <p>
            <spring:message code="bytrox.company.company.037" />
          </p>
        </article>
      </div>
      <div class="center mt40"><a class="btn btn-primary" href="${ctx}/${siteLang}/account-types">
          <spring:message code="bytrox.company.company.038" />
        </a></div>
    </div>
  </section>
</main>
<jsp:include page="../frame/bytroxFooter.jsp" />
