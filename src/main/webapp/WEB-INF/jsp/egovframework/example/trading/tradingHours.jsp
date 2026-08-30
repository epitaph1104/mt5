<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../frame/bytroxHeader.jsp" />
<main>
  <section class="page-space">
    <div class="narrow">
      <h1 class="section-title">
        <spring:message code="bytrox.trading.tradinghours.001" /><br><span class="green">
          <spring:message code="bytrox.trading.tradinghours.002" />
        </span>
      </h1>
      <p class="section-lead">
        <spring:message code="bytrox.trading.tradinghours.003" />
      </p><img src="${ctx}/images/trading-hours-map.png" alt="Global trading hours map" style="width:100%;margin:35px auto 55px">
    </div>
  </section>
  <section class="section">
    <div class="narrow">
      <h2 class="section-title">
        <spring:message code="bytrox.trading.tradinghours.004" />
      </h2>
      <div class="center hours-tabs"><button class="btn btn-primary">
          <spring:message code="bytrox.trading.tradinghours.005" />
        </button> <button class="btn btn-light">
          <spring:message code="bytrox.trading.tradinghours.006" />
        </button> <button class="btn btn-light">
          <spring:message code="bytrox.trading.tradinghours.007" />
        </button> <button class="btn btn-light">
          <spring:message code="bytrox.trading.tradinghours.008" />
        </button></div>
      <div style="overflow-x:auto">
        <table class="data-table">
          <thead>
            <tr>
              <th>
                <spring:message code="bytrox.trading.tradinghours.009" />
              </th>
              <th>
                <spring:message code="bytrox.trading.tradinghours.010" />
              </th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td class="">
                <spring:message code="bytrox.trading.tradinghours.011" />
              </td>
              <td class="">
                <spring:message code="bytrox.trading.tradinghours.012" />
              </td>
            </tr>
            <tr>
              <td class="">
                <spring:message code="bytrox.trading.tradinghours.013" />
              </td>
              <td class="">
                <spring:message code="bytrox.trading.tradinghours.014" />
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      <p style="font-size:14px;margin-top:30px">
        <spring:message code="bytrox.trading.tradinghours.015" />
      </p>
    </div>
  </section>
  <section class="cta cta-image">
    <div class="container">
      <div class="cta-copy">
        <h2>
          <spring:message code="bytrox.trading.tradinghours.016" />
        </h2>
        <p>
          <spring:message code="bytrox.trading.tradinghours.017" />
        </p>
      </div>
      <div class="cta-actions"><a class="btn btn-light" href="${ctx}/${siteLang}/account-types">
          <spring:message code="bytrox.trading.tradinghours.018" />
        </a><a class="btn" style="background:rgba(255,255,255,.2);color:#fff" href="#">
          <spring:message code="bytrox.trading.tradinghours.019" />
        </a></div>
    </div>
  </section>
</main>
<jsp:include page="../frame/bytroxFooter.jsp" />
