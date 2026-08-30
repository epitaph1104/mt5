<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../frame/bytroxHeader.jsp" />
<main>
  <section class="page-space">
    <div class="narrow">
      <div class="eyebrow">
        <spring:message code="bytrox.trading.commodotles.001" />
      </div>
      <h1 class="section-title">
        <spring:message code="bytrox.trading.commodotles.002" />
      </h1>
      <p class="section-lead">
        <spring:message code="bytrox.trading.commodotles.003" />
      </p>
      <div class="feature-grid">
        <article class="feature">
          <div class="icon-circle"><img src="${ctx}/images/commodities-globe.svg" alt=""></div>
          <h3>
            <spring:message code="bytrox.trading.commodotles.004" />
          </h3>
          <p>
            <spring:message code="bytrox.trading.commodotles.005" />
          </p>
        </article>
        <article class="feature">
          <div class="icon-circle"><img src="${ctx}/images/commodities-dollar.svg" alt=""></div>
          <h3>
            <spring:message code="bytrox.trading.commodotles.006" />
          </h3>
          <p>
            <spring:message code="bytrox.trading.commodotles.007" />
          </p>
        </article>
        <article class="feature">
          <div class="icon-circle"><img src="${ctx}/images/commodities-trend.svg" alt=""></div>
          <h3>
            <spring:message code="bytrox.trading.commodotles.008" />
          </h3>
          <p>
            <spring:message code="bytrox.trading.commodotles.009" />
          </p>
        </article>
        <article class="feature">
          <div class="icon-circle"><img src="${ctx}/images/commodities-bars.svg" alt=""></div>
          <h3>
            <spring:message code="bytrox.trading.commodotles.010" />
          </h3>
          <p>
            <spring:message code="bytrox.trading.commodotles.011" />
          </p>
        </article>
      </div>
    </div>
  </section>
  <section class="section section-soft">
    <div class="narrow">
      <h2 class="section-title">
        <spring:message code="bytrox.trading.commodotles.012" />
      </h2>
      <p class="section-lead">
        <spring:message code="bytrox.trading.commodotles.013" />
      </p>
      <div class="category-grid ">
        <article class="category-card">
          <div class="icon-circle" style="background:#4785f0"><img src="${ctx}/images/commodities-droplet.svg" alt=""></div>
          <h3>
            <spring:message code="bytrox.trading.commodotles.014" />
          </h3>
          <p>
            <spring:message code="bytrox.trading.commodotles.015" />
          </p><small>
            <spring:message code="bytrox.trading.commodotles.016" /><br>
            <spring:message code="bytrox.trading.commodotles.017" /><br>
            <spring:message code="bytrox.trading.commodotles.018" /><br>
            <spring:message code="bytrox.trading.commodotles.019" />
          </small>
        </article>
        <article class="category-card">
          <div class="icon-circle" style="background:#21c99a"><img src="${ctx}/images/commodities-heart.svg" alt=""></div>
          <h3>
            <spring:message code="bytrox.trading.commodotles.020" />
          </h3>
          <p>
            <spring:message code="bytrox.trading.commodotles.021" />
          </p><small>
            <spring:message code="bytrox.trading.commodotles.022" /><br>
            <spring:message code="bytrox.trading.commodotles.023" /><br>
            <spring:message code="bytrox.trading.commodotles.024" /><br>
            <spring:message code="bytrox.trading.commodotles.025" />
          </small>
        </article>
        <article class="category-card">
          <div class="icon-circle" style="background:#a94df0"><img src="${ctx}/images/commodities-flask.svg" alt=""></div>
          <h3>
            <spring:message code="bytrox.trading.commodotles.026" />
          </h3>
          <p>
            <spring:message code="bytrox.trading.commodotles.027" />
          </p><small>
            <spring:message code="bytrox.trading.commodotles.028" /><br>
            <spring:message code="bytrox.trading.commodotles.029" /><br>
            <spring:message code="bytrox.trading.commodotles.030" /><br>
            <spring:message code="bytrox.trading.commodotles.031" />
          </small>
        </article>
      </div>
    </div>
  </section>
  <section class="section">
    <div class="narrow">
      <h2 class="section-title">
        <spring:message code="bytrox.trading.commodotles.032" />
      </h2>
      <p class="section-lead">
        <spring:message code="bytrox.trading.commodotles.033" />
      </p>
      <div style="overflow-x:auto">
        <table class="data-table">
          <thead>
            <tr>
              <th>
                <spring:message code="bytrox.trading.commodotles.034" />
              </th>
              <th>
                <spring:message code="bytrox.trading.commodotles.035" />
              </th>
              <th>
                <spring:message code="bytrox.trading.commodotles.036" />
              </th>
              <th>
                <spring:message code="bytrox.trading.commodotles.037" />
              </th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td class="">
                <spring:message code="bytrox.trading.commodotles.038" />
              </td>
              <td class="">
                <spring:message code="bytrox.trading.commodotles.039" />
              </td>
              <td class="highlight">0.03</td>
              <td class="">1:500</td>
            </tr>
            <tr>
              <td class="">
                <spring:message code="bytrox.trading.commodotles.040" />
              </td>
              <td class="">
                <spring:message code="bytrox.trading.commodotles.041" />
              </td>
              <td class="highlight">0.03</td>
              <td class="">1:500</td>
            </tr>
            <tr>
              <td class="">
                <spring:message code="bytrox.trading.commodotles.042" />
              </td>
              <td class="">
                <spring:message code="bytrox.trading.commodotles.043" />
              </td>
              <td class="highlight">0.030</td>
              <td class="">1:100</td>
            </tr>
            <tr>
              <td class="">
                <spring:message code="bytrox.trading.commodotles.044" />
              </td>
              <td class="">
                <spring:message code="bytrox.trading.commodotles.045" />
              </td>
              <td class="highlight">0.004</td>
              <td class="">1:200</td>
            </tr>
            <tr>
              <td class="">
                <spring:message code="bytrox.trading.commodotles.046" />
              </td>
              <td class="">
                <spring:message code="bytrox.trading.commodotles.047" />
              </td>
              <td class="highlight">2.0</td>
              <td class="">1:100</td>
            </tr>
          </tbody>
        </table>
      </div>
      <aside class="notice-box"><b>
          <spring:message code="bytrox.trading.commodotles.048" />
        </b>
        <spring:message code="bytrox.trading.commodotles.049" />
      </aside>
      <div class="center"><a class="btn btn-primary" href="${ctx}/${siteLang}/account-types">
          <spring:message code="bytrox.trading.commodotles.050" />
        </a></div>
    </div>
  </section>
  <section class="cta">
    <div class="container">
      <h2>
        <spring:message code="bytrox.trading.commodotles.051" />
      </h2>
      <p>
        <spring:message code="bytrox.trading.commodotles.052" />
      </p><a class="btn btn-light" href="${ctx}/${siteLang}/account-types">
        <spring:message code="bytrox.trading.commodotles.053" />
      </a><a class="btn" style="background:rgba(255,255,255,.2);color:#fff" href="#">
        <spring:message code="bytrox.trading.commodotles.054" />
      </a>
    </div>
  </section>
</main>
<jsp:include page="../frame/bytroxFooter.jsp" />
