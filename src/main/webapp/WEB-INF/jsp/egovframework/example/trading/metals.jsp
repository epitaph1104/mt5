<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../frame/bytroxHeader.jsp" />
<main>
  <section class="page-space">
    <div class="narrow">
      <div class="eyebrow">
        <spring:message code="bytrox.trading.metals.001" />
      </div>
      <h1 class="section-title">
        <spring:message code="bytrox.trading.metals.002" />
      </h1>
      <p class="section-lead">
        <spring:message code="bytrox.trading.metals.003" />
      </p>
      <div class="feature-grid">
        <article class="feature">
          <div class="icon-circle"><img src="${ctx}/images/metals-cube.svg" alt=""></div>
          <h3>
            <spring:message code="bytrox.trading.metals.004" />
          </h3>
          <p>
            <spring:message code="bytrox.trading.metals.005" />
          </p>
        </article>
        <article class="feature">
          <div class="icon-circle"><img src="${ctx}/images/metals-dollar.svg" alt=""></div>
          <h3>
            <spring:message code="bytrox.trading.metals.006" />
          </h3>
          <p>
            <spring:message code="bytrox.trading.metals.007" />
          </p>
        </article>
        <article class="feature">
          <div class="icon-circle"><img src="${ctx}/images/metals-trend.svg" alt=""></div>
          <h3>
            <spring:message code="bytrox.trading.metals.008" />
          </h3>
          <p>
            <spring:message code="bytrox.trading.metals.009" />
          </p>
        </article>
        <article class="feature">
          <div class="icon-circle"><img src="${ctx}/images/metals-clock.svg" alt=""></div>
          <h3>
            <spring:message code="bytrox.trading.metals.010" />
          </h3>
          <p>
            <spring:message code="bytrox.trading.metals.011" />
          </p>
        </article>
      </div>
    </div>
  </section>
  <section class="section section-soft">
    <div class="narrow">
      <h2 class="section-title">
        <spring:message code="bytrox.trading.metals.012" />
      </h2>
      <p class="section-lead">
        <spring:message code="bytrox.trading.metals.013" />
      </p>
      <div class="category-grid four">
        <article class="category-card">
          <div class="icon-circle" style="background:#4785f0"><img src="${ctx}/images/metals-dollar.svg" alt=""></div>
          <h3>
            <spring:message code="bytrox.trading.metals.014" />
          </h3>
          <p>
            <spring:message code="bytrox.trading.metals.015" />
          </p><small>
            <spring:message code="bytrox.trading.metals.016" /><br>
            <spring:message code="bytrox.trading.metals.017" /><br>
            <spring:message code="bytrox.trading.metals.018" /><br>
            <spring:message code="bytrox.trading.metals.019" />
          </small>
        </article>
        <article class="category-card">
          <div class="icon-circle" style="background:#21c99a"><img src="${ctx}/images/metals-cube.svg" alt=""></div>
          <h3>
            <spring:message code="bytrox.trading.metals.020" />
          </h3>
          <p>
            <spring:message code="bytrox.trading.metals.021" />
          </p><small>
            <spring:message code="bytrox.trading.metals.022" /><br>
            <spring:message code="bytrox.trading.metals.023" /><br>
            <spring:message code="bytrox.trading.metals.024" /><br>
            <spring:message code="bytrox.trading.metals.025" />
          </small>
        </article>
        <article class="category-card">
          <div class="icon-circle" style="background:#a94df0"><img src="${ctx}/images/metals-platinum.svg" alt=""></div>
          <h3>
            <spring:message code="bytrox.trading.metals.026" />
          </h3>
          <p>
            <spring:message code="bytrox.trading.metals.027" />
          </p><small>
            <spring:message code="bytrox.trading.metals.028" /><br>
            <spring:message code="bytrox.trading.metals.029" /><br>
            <spring:message code="bytrox.trading.metals.030" />
          </small>
        </article>
        <article class="category-card">
          <div class="icon-circle" style="background:#f4b80d"><img src="${ctx}/images/metals-palladium.svg" alt=""></div>
          <h3>
            <spring:message code="bytrox.trading.metals.031" />
          </h3>
          <p>
            <spring:message code="bytrox.trading.metals.032" />
          </p><small>
            <spring:message code="bytrox.trading.metals.033" /><br>
            <spring:message code="bytrox.trading.metals.034" /><br>
            <spring:message code="bytrox.trading.metals.035" />
          </small>
        </article>
      </div>
    </div>
  </section>
  <section class="section">
    <div class="narrow">
      <h2 class="section-title">
        <spring:message code="bytrox.trading.metals.036" />
      </h2>
      <p class="section-lead">
        <spring:message code="bytrox.trading.metals.037" />
      </p>
      <div style="overflow-x:auto">
        <table class="data-table">
          <thead>
            <tr>
              <th>
                <spring:message code="bytrox.trading.metals.038" />
              </th>
              <th>
                <spring:message code="bytrox.trading.metals.039" />
              </th>
              <th>
                <spring:message code="bytrox.trading.metals.040" />
              </th>
              <th>
                <spring:message code="bytrox.trading.metals.041" />
              </th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td class="">
                <spring:message code="bytrox.trading.metals.042" />
              </td>
              <td class="">
                <spring:message code="bytrox.trading.metals.043" />
              </td>
              <td class="highlight">0.20</td>
              <td class="">1:1000</td>
            </tr>
            <tr>
              <td class="">
                <spring:message code="bytrox.trading.metals.044" />
              </td>
              <td class="">
                <spring:message code="bytrox.trading.metals.045" />
              </td>
              <td class="highlight">0.025</td>
              <td class="">1:500</td>
            </tr>
            <tr>
              <td class="">
                <spring:message code="bytrox.trading.metals.046" />
              </td>
              <td class="">
                <spring:message code="bytrox.trading.metals.047" />
              </td>
              <td class="highlight">3.0</td>
              <td class="">1:200</td>
            </tr>
            <tr>
              <td class="">
                <spring:message code="bytrox.trading.metals.048" />
              </td>
              <td class="">
                <spring:message code="bytrox.trading.metals.049" />
              </td>
              <td class="highlight">5.0</td>
              <td class="">1:200</td>
            </tr>
          </tbody>
        </table>
      </div>
      <aside class="notice-box"><b>
          <spring:message code="bytrox.trading.metals.050" />
        </b>
        <spring:message code="bytrox.trading.metals.051" />
      </aside>
      <div class="center"><a class="btn btn-primary" href="${ctx}/${siteLang}/account-types">
          <spring:message code="bytrox.trading.metals.052" />
        </a></div>
    </div>
  </section>
  <section class="cta">
    <div class="container">
      <h2>
        <spring:message code="bytrox.trading.metals.053" />
      </h2>
      <p>
        <spring:message code="bytrox.trading.metals.054" />
      </p><a class="btn btn-light" href="${ctx}/${siteLang}/account-types">
        <spring:message code="bytrox.trading.metals.055" />
      </a><a class="btn" style="background:rgba(255,255,255,.2);color:#fff" href="#">
        <spring:message code="bytrox.trading.metals.056" />
      </a>
    </div>
  </section>
</main>
<jsp:include page="../frame/bytroxFooter.jsp" />
