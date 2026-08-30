<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../frame/bytroxHeader.jsp" />
<main>
  <section class="page-space">
    <div class="narrow">
      <div class="eyebrow">
        <spring:message code="bytrox.trading.forex.001" />
      </div>
      <h1 class="section-title">
        <spring:message code="bytrox.trading.forex.002" />
      </h1>
      <p class="section-lead">
        <spring:message code="bytrox.trading.forex.003" />
      </p>
      <div class="feature-grid">
        <article class="feature">
          <div class="icon-circle"><img src="${ctx}/images/forex-dollar.svg" alt=""></div>
          <h3>
            <spring:message code="bytrox.trading.forex.004" />
          </h3>
          <p>
            <spring:message code="bytrox.trading.forex.005" />
          </p>
        </article>
        <article class="feature">
          <div class="icon-circle"><img src="${ctx}/images/forex-trend.svg" alt=""></div>
          <h3>
            <spring:message code="bytrox.trading.forex.006" />
          </h3>
          <p>
            <spring:message code="bytrox.trading.forex.007" />
          </p>
        </article>
        <article class="feature">
          <div class="icon-circle"><img src="${ctx}/images/forex-bars.svg" alt=""></div>
          <h3>
            <spring:message code="bytrox.trading.forex.008" />
          </h3>
          <p>
            <spring:message code="bytrox.trading.forex.009" />
          </p>
        </article>
        <article class="feature">
          <div class="icon-circle"><img src="${ctx}/images/forex-bolt.svg" alt=""></div>
          <h3>
            <spring:message code="bytrox.trading.forex.010" />
          </h3>
          <p>
            <spring:message code="bytrox.trading.forex.011" />
          </p>
        </article>
      </div>
    </div>
  </section>
  <section class="section">
    <div class="narrow">
      <h2 class="section-title">
        <spring:message code="bytrox.trading.forex.012" />
      </h2>
      <p class="section-lead">
        <spring:message code="bytrox.trading.forex.013" />
      </p>
      <div style="overflow-x:auto">
        <table class="data-table">
          <thead>
            <tr>
              <th>
                <spring:message code="bytrox.trading.forex.014" />
              </th>
              <th class="highlight">
                <spring:message code="bytrox.trading.forex.015" />
              </th>
              <th>
                <spring:message code="bytrox.trading.forex.016" />
              </th>
              <th>
                <spring:message code="bytrox.trading.forex.017" />
              </th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td class="">
                <spring:message code="bytrox.trading.forex.018" />
              </td>
              <td class="">
                <spring:message code="bytrox.trading.forex.019" />
              </td>
              <td class="highlight">
                <spring:message code="bytrox.trading.forex.020" />
              </td>
              <td class="">1:500</td>
            </tr>
            <tr>
              <td class="">
                <spring:message code="bytrox.trading.forex.021" />
              </td>
              <td class="">
                <spring:message code="bytrox.trading.forex.022" />
              </td>
              <td class="highlight">
                <spring:message code="bytrox.trading.forex.023" />
              </td>
              <td class="">1:500</td>
            </tr>
            <tr>
              <td class="">
                <spring:message code="bytrox.trading.forex.024" />
              </td>
              <td class="">
                <spring:message code="bytrox.trading.forex.025" />
              </td>
              <td class="highlight">
                <spring:message code="bytrox.trading.forex.026" />
              </td>
              <td class="">1:500</td>
            </tr>
            <tr>
              <td class="">
                <spring:message code="bytrox.trading.forex.027" />
              </td>
              <td class="">
                <spring:message code="bytrox.trading.forex.028" />
              </td>
              <td class="highlight">
                <spring:message code="bytrox.trading.forex.029" />
              </td>
              <td class="">1:500</td>
            </tr>
            <tr>
              <td class="">
                <spring:message code="bytrox.trading.forex.030" />
              </td>
              <td class="">
                <spring:message code="bytrox.trading.forex.031" />
              </td>
              <td class="highlight">
                <spring:message code="bytrox.trading.forex.032" />
              </td>
              <td class="">1:500</td>
            </tr>
          </tbody>
        </table>
      </div>
      <aside class="notice-box"><b>
          <spring:message code="bytrox.trading.forex.033" />
        </b>
        <spring:message code="bytrox.trading.forex.034" />
      </aside>
      <div class="center"><a class="btn btn-primary" href="${ctx}/${siteLang}/account-types">
          <spring:message code="bytrox.trading.forex.035" />
        </a></div>
    </div>
  </section>
  <section class="section">
    <div class="narrow split">
      <div>
        <h2 style="font-size:38px;margin:0">
          <spring:message code="bytrox.trading.forex.036" />
        </h2>
        <p>
          <spring:message code="bytrox.trading.forex.037" />
        </p>
        <div class="step-list">
          <div class="step"><span class="step-num">1</span>
            <div>
              <h4>
                <spring:message code="bytrox.trading.forex.038" />
              </h4>
              <p>
                <spring:message code="bytrox.trading.forex.039" />
              </p>
            </div>
          </div>
          <div class="step"><span class="step-num">2</span>
            <div>
              <h4>
                <spring:message code="bytrox.trading.forex.040" />
              </h4>
              <p>
                <spring:message code="bytrox.trading.forex.041" />
              </p>
            </div>
          </div>
          <div class="step"><span class="step-num">3</span>
            <div>
              <h4>
                <spring:message code="bytrox.trading.forex.042" />
              </h4>
              <p>
                <spring:message code="bytrox.trading.forex.043" />
              </p>
            </div>
          </div>
        </div>
      </div>
      <aside class="platform-card">
        <div><img src="${ctx}/images/forex-platform.svg" alt="">
          <h3>
            <spring:message code="bytrox.trading.forex.044" />
          </h3>
          <p>
            <spring:message code="bytrox.trading.forex.045" />
          </p>
        </div>
      </aside>
    </div>
  </section>
  <section class="cta">
    <div class="container">
      <h2>
        <spring:message code="bytrox.trading.forex.046" />
      </h2>
      <p>
        <spring:message code="bytrox.trading.forex.047" />
      </p><a class="btn btn-light cta-live" href="${ctx}/${siteLang}/account-types">
        <spring:message code="bytrox.trading.forex.048" />
      </a><a class="btn cta-demo" style="background:rgba(255,255,255,.2);color:#fff" href="#">
        <spring:message code="bytrox.trading.forex.049" />
      </a>
    </div>
  </section>
</main>
<jsp:include page="../frame/bytroxFooter.jsp" />
