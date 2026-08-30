<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../frame/bytroxHeader.jsp" />
<main>
  <section class="page-space">
    <div class="narrow">
      <h1 class="section-title">
        <spring:message code="bytrox.legal.depositwithdrawals.001" />
      </h1>
      <p class="section-lead">
        <spring:message code="bytrox.legal.depositwithdrawals.002" />
      </p>
      <div class="info-card-grid">
        <article class="info-card"><img src="${ctx}/images/deposit-methods.svg" alt="">
          <h3>
            <spring:message code="bytrox.legal.depositwithdrawals.003" />
          </h3>
          <p>
            <spring:message code="bytrox.legal.depositwithdrawals.004" />
          </p>
        </article>
        <article class="info-card"><img src="${ctx}/images/deposit-fast.svg" alt="">
          <h3>
            <spring:message code="bytrox.legal.depositwithdrawals.005" />
          </h3>
          <p>
            <spring:message code="bytrox.legal.depositwithdrawals.006" />
          </p>
        </article>
        <article class="info-card"><img src="${ctx}/images/deposit-security.svg" alt="">
          <h3>
            <spring:message code="bytrox.legal.depositwithdrawals.007" />
          </h3>
          <p>
            <spring:message code="bytrox.legal.depositwithdrawals.008" />
          </p>
        </article>
        <article class="info-card"><img src="${ctx}/images/deposit-security.svg" alt="">
          <h3>
            <spring:message code="bytrox.legal.depositwithdrawals.009" />
          </h3>
          <p>
            <spring:message code="bytrox.legal.depositwithdrawals.010" />
          </p>
        </article>
      </div>
      <div class="center mt40"><a class="btn btn-primary">
          <spring:message code="bytrox.legal.depositwithdrawals.011" />
        </a> <a class="btn btn-dark">
          <spring:message code="bytrox.legal.depositwithdrawals.012" />
        </a></div>
    </div>
  </section>
  <section class="section">
    <div class="narrow">
      <h2 class="section-title">
        <spring:message code="bytrox.legal.depositwithdrawals.013" /> <span class="green">
          <spring:message code="bytrox.legal.depositwithdrawals.014" />
        </span>
      </h2>
      <p class="section-lead">
        <spring:message code="bytrox.legal.depositwithdrawals.015" />
      </p>
      <div class="photo-steps"><img src="${ctx}/images/account-opening.jpg.png" alt="Trader using ByTrox on a phone">
        <div class="steps-overlay">
          <article><small>
              <spring:message code="bytrox.legal.depositwithdrawals.016" />
            </small><img src="${ctx}/images/deposit-login.svg" alt="" style="width:30px;">
            <h3>
              <spring:message code="bytrox.legal.depositwithdrawals.017" />
            </h3>
            <p>
              <spring:message code="bytrox.legal.depositwithdrawals.018" />
            </p>
          </article>
          <article><small>
              <spring:message code="bytrox.legal.depositwithdrawals.019" />
            </small><img src="${ctx}/images/deposit-select.svg" alt="">
            <h3>
              <spring:message code="bytrox.legal.depositwithdrawals.020" />
            </h3>
            <p>
              <spring:message code="bytrox.legal.depositwithdrawals.021" />
            </p>
          </article>
          <article><small>
              <spring:message code="bytrox.legal.depositwithdrawals.022" />
            </small><img src="${ctx}/images/deposit-confirm.svg" alt="">
            <h3>
              <spring:message code="bytrox.legal.depositwithdrawals.023" />
            </h3>
            <p>
              <spring:message code="bytrox.legal.depositwithdrawals.024" />
            </p>
          </article>
        </div>
      </div>
    </div>
  </section>
  <section class="section">
    <div class="narrow">
      <h2 class="section-title">
        <spring:message code="bytrox.legal.depositwithdrawals.025" />
      </h2>
      <p class="section-lead">
        <spring:message code="bytrox.legal.depositwithdrawals.026" />
      </p>
      <div class="center" style="margin-bottom:25px"><button class="btn btn-primary" data-tab>
          <spring:message code="bytrox.legal.depositwithdrawals.027" />
        </button> <button class="btn btn-light" data-tab>
          <spring:message code="bytrox.legal.depositwithdrawals.028" />
        </button></div>
      <div style="overflow-x:auto">
        <table class="data-table">
          <thead>
            <tr>
              <th>
                <spring:message code="bytrox.legal.depositwithdrawals.029" />
              </th>
              <th>
                <spring:message code="bytrox.legal.depositwithdrawals.030" />
              </th>
              <th>
                <spring:message code="bytrox.legal.depositwithdrawals.031" />
              </th>
              <th>
                <spring:message code="bytrox.legal.depositwithdrawals.032" />
              </th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>
                <span class="payment-method">
                  <img class="payment-method-icon" src="${ctx}/images/deposit-payment-asia.svg" alt="">
                  <spring:message code="bytrox.legal.depositwithdrawals.033" />
                </span>
              </td>
              <td class="">
                <spring:message code="bytrox.legal.depositwithdrawals.034" />
              </td>
              <td class="highlight">
                <spring:message code="bytrox.legal.depositwithdrawals.035" />
              </td>
              <td class="">
                <spring:message code="bytrox.legal.depositwithdrawals.036" />
              </td>
            </tr>
            <tr>
              <td>
                <span class="payment-method">
                  <img class="payment-method-icon" src="${ctx}/images/deposit-bitcoin.svg" alt="">
                  <spring:message code="bytrox.legal.depositwithdrawals.037" />
                </span>
              </td>
              <td class="">
                <spring:message code="bytrox.legal.depositwithdrawals.038" />
              </td>
              <td class="highlight">
                <spring:message code="bytrox.legal.depositwithdrawals.039" />
              </td>
              <td class="">
                <spring:message code="bytrox.legal.depositwithdrawals.040" />
              </td>
            </tr>
            <tr>
              <td>
                <span class="payment-method">
                  <img class="payment-method-icon" src="${ctx}/images/deposit-ethereum.svg" alt="">
                  <spring:message code="bytrox.legal.depositwithdrawals.041" />
                </span>
              </td>
              <td class="">
                <spring:message code="bytrox.legal.depositwithdrawals.042" />
              </td>
              <td class="highlight">
                <spring:message code="bytrox.legal.depositwithdrawals.043" />
              </td>
              <td class="">
                <spring:message code="bytrox.legal.depositwithdrawals.044" />
              </td>
            </tr>
            <tr>
              <td>
                <span class="payment-method">
                  <img class="payment-method-icon" src="${ctx}/images/deposit-tether.svg" alt="">
                  <spring:message code="bytrox.legal.depositwithdrawals.045" />
                </span>
              </td>
              <td class="">
                <spring:message code="bytrox.legal.depositwithdrawals.046" />
              </td>
              <td class="highlight">
                <spring:message code="bytrox.legal.depositwithdrawals.047" />
              </td>
              <td class="">
                <spring:message code="bytrox.legal.depositwithdrawals.048" />
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </section>
  <section class="cta">
    <div class="container">
      <h2>
        <spring:message code="bytrox.legal.depositwithdrawals.049" />
      </h2>
      <p>
        <spring:message code="bytrox.legal.depositwithdrawals.050" />
      </p><a class="btn btn-light" href="${ctx}/${siteLang}/account-types">
        <spring:message code="bytrox.legal.depositwithdrawals.051" />
      </a><a class="btn" style="background:rgba(255,255,255,.2);color:#fff" href="#">
        <spring:message code="bytrox.legal.depositwithdrawals.052" />
      </a>
    </div>
  </section>
</main>
<jsp:include page="../frame/bytroxFooter.jsp" />
