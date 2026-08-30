<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../frame/bytroxHeader.jsp" />
<main>
  <section class="page-space">
    <div class="narrow">
      <div class="eyebrow">
        <spring:message code="bytrox.trading.indices.001" />
      </div>
      <h1 class="section-title">
        <spring:message code="bytrox.trading.indices.002" />
      </h1>
      <p class="section-lead">
        <spring:message code="bytrox.trading.indices.003" />
      </p>
      <div class="feature-grid">
        <article class="feature">
          <div class="icon-circle"><img src="${ctx}/images/indices-bars.svg" alt=""></div>
          <h3>
            <spring:message code="bytrox.trading.indices.004" />
          </h3>
          <p>
            <spring:message code="bytrox.trading.indices.005" />
          </p>
        </article>
        <article class="feature">
          <div class="icon-circle"><img src="${ctx}/images/indices-dollar.svg" alt=""></div>
          <h3>
            <spring:message code="bytrox.trading.indices.006" />
          </h3>
          <p>
            <spring:message code="bytrox.trading.indices.007" />
          </p>
        </article>
        <article class="feature">
          <div class="icon-circle"><img src="${ctx}/images/indices-trend.svg" alt=""></div>
          <h3>
            <spring:message code="bytrox.trading.indices.008" />
          </h3>
          <p>
            <spring:message code="bytrox.trading.indices.009" />
          </p>
        </article>
        <article class="feature">
          <div class="icon-circle"><img src="${ctx}/images/indices-bolt.svg" alt=""></div>
          <h3>
            <spring:message code="bytrox.trading.indices.010" />
          </h3>
          <p>
            <spring:message code="bytrox.trading.indices.011" />
          </p>
        </article>
      </div>
    </div>
  </section>
  <section class="section section-soft">
    <div class="narrow">
      <h2 class="section-title">
        <spring:message code="bytrox.trading.indices.012" />
      </h2>
      <p class="section-lead">
        <spring:message code="bytrox.trading.indices.013" />
      </p>
      <div class="category-grid ">
        <article class="category-card">
          <div class="icon-circle" style="background:#4785f0"><img src="${ctx}/images/indices-flag.svg" alt=""></div>
          <h3>
            <spring:message code="bytrox.trading.indices.014" />
          </h3>
          <p>
            <spring:message code="bytrox.trading.indices.015" />
          </p><small>
            <spring:message code="bytrox.trading.indices.016" /><br>
            <spring:message code="bytrox.trading.indices.017" /><br>
            <spring:message code="bytrox.trading.indices.018" />
          </small>
        </article>
        <article class="category-card">
          <div class="icon-circle" style="background:#21c99a"><img src="${ctx}/images/indices-pie.svg" alt=""></div>
          <h3>
            <spring:message code="bytrox.trading.indices.019" />
          </h3>
          <p>
            <spring:message code="bytrox.trading.indices.020" />
          </p><small>
            <spring:message code="bytrox.trading.indices.021" /><br>
            <spring:message code="bytrox.trading.indices.022" /><br>
            <spring:message code="bytrox.trading.indices.023" />
          </small>
        </article>
        <article class="category-card">
          <div class="icon-circle" style="background:#a94df0"><img src="${ctx}/images/indices-sun.svg" alt=""></div>
          <h3>
            <spring:message code="bytrox.trading.indices.024" />
          </h3>
          <p>
            <spring:message code="bytrox.trading.indices.025" />
          </p><small>
            <spring:message code="bytrox.trading.indices.026" /><br>
            <spring:message code="bytrox.trading.indices.027" /><br>
            <spring:message code="bytrox.trading.indices.028" />
          </small>
        </article>
      </div>
    </div>
  </section>
  <section class="section">
    <div class="narrow">
      <h2 class="section-title">
        <spring:message code="bytrox.trading.indices.029" />
      </h2>
      <p class="section-lead">
        <spring:message code="bytrox.trading.indices.030" />
      </p>
      <div style="overflow-x:auto">
        <table class="data-table">
          <thead>
            <tr>
              <th>
                <spring:message code="bytrox.trading.indices.031" />
              </th>
              <th>
                <spring:message code="bytrox.trading.indices.032" />
              </th>
              <th>
                <spring:message code="bytrox.trading.indices.033" />
              </th>
              <th>
                <spring:message code="bytrox.trading.indices.034" />
              </th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td class="">
                <spring:message code="bytrox.trading.indices.035" />
              </td>
              <td class="">
                <spring:message code="bytrox.trading.indices.036" />
              </td>
              <td class="highlight">
                <spring:message code="bytrox.trading.indices.037" />
              </td>
              <td class="">1:200</td>
            </tr>
            <tr>
              <td class="">
                <spring:message code="bytrox.trading.indices.038" />
              </td>
              <td class="">
                <spring:message code="bytrox.trading.indices.039" />
              </td>
              <td class="highlight">
                <spring:message code="bytrox.trading.indices.040" />
              </td>
              <td class="">1:200</td>
            </tr>
            <tr>
              <td class="">
                <spring:message code="bytrox.trading.indices.041" />
              </td>
              <td class="">
                <spring:message code="bytrox.trading.indices.042" />
              </td>
              <td class="highlight">
                <spring:message code="bytrox.trading.indices.043" />
              </td>
              <td class="">1:200</td>
            </tr>
            <tr>
              <td class="">
                <spring:message code="bytrox.trading.indices.044" />
              </td>
              <td class="">
                <spring:message code="bytrox.trading.indices.045" />
              </td>
              <td class="highlight">
                <spring:message code="bytrox.trading.indices.046" />
              </td>
              <td class="">1:200</td>
            </tr>
            <tr>
              <td class="">
                <spring:message code="bytrox.trading.indices.047" />
              </td>
              <td class="">
                <spring:message code="bytrox.trading.indices.048" />
              </td>
              <td class="highlight">
                <spring:message code="bytrox.trading.indices.049" />
              </td>
              <td class="">1:200</td>
            </tr>
          </tbody>
        </table>
      </div>
      <aside class="notice-box"><b>
          <spring:message code="bytrox.trading.indices.050" />
        </b>
        <spring:message code="bytrox.trading.indices.051" />
      </aside>
      <div class="center"><a class="btn btn-primary" href="${ctx}/${siteLang}/account-types">
          <spring:message code="bytrox.trading.indices.052" />
        </a></div>
    </div>
  </section>
  <section class="cta">
    <div class="container">
      <h2>
        <spring:message code="bytrox.trading.indices.053" />
      </h2>
      <p>
        <spring:message code="bytrox.trading.indices.054" />
      </p><a class="btn btn-light" href="${ctx}/${siteLang}/account-types">
        <spring:message code="bytrox.trading.indices.055" />
      </a><a class="btn" style="background:rgba(255,255,255,.2);color:#fff" href="#">
        <spring:message code="bytrox.trading.indices.056" />
      </a>
    </div>
  </section>
</main>
<jsp:include page="../frame/bytroxFooter.jsp" />
