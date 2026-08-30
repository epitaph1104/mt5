<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../frame/bytroxHeader.jsp" />
<main>
  <section class="page-space">
    <div class="narrow">
      <h1 class="section-title">
        <spring:message code="bytrox.account.accounttypes.001" />
      </h1>
      <div class="account-tabs">
        <article class="account-tab active">
          <h3>
            <spring:message code="bytrox.account.accounttypes.002" />
          </h3>
          <p>
            <spring:message code="bytrox.account.accounttypes.003" />
          </p>
        </article>
        <article class="account-tab">
          <h3>
            <spring:message code="bytrox.account.accounttypes.004" />
          </h3>
          <p>
            <spring:message code="bytrox.account.accounttypes.005" />
          </p>
        </article>
        <article class="account-tab">
          <h3>
            <spring:message code="bytrox.account.accounttypes.006" />
          </h3>
          <p>
            <spring:message code="bytrox.account.accounttypes.007" />
          </p>
        </article>
      </div>
      <section class="account-panel">
        <dl class="spec-grid">
          <div class="spec">
            <dt>
              <spring:message code="bytrox.account.accounttypes.008" />
            </dt>
            <dd>$50</dd>
          </div>
          <div class="spec">
            <dt>
              <spring:message code="bytrox.account.accounttypes.009" />
            </dt>
            <dd>
              <spring:message code="bytrox.account.accounttypes.010" />
            </dd>
          </div>
          <div class="spec">
            <dt>
              <spring:message code="bytrox.account.accounttypes.011" />
            </dt>
            <dd>100%</dd>
          </div>
          <div class="spec">
            <dt>
              <spring:message code="bytrox.account.accounttypes.012" />
            </dt>
            <dd>$4</dd>
          </div>
          <div class="spec">
            <dt>
              <spring:message code="bytrox.account.accounttypes.013" />
            </dt>
            <dd>50%</dd>
          </div>
          <div class="spec">
            <dt>
              <spring:message code="bytrox.account.accounttypes.014" />
            </dt>
            <dd>
              <spring:message code="bytrox.account.accounttypes.015" />
            </dd>
          </div>
          <div class="spec">
            <dt>
              <spring:message code="bytrox.account.accounttypes.016" />
            </dt>
            <dd>30%</dd>
          </div>
          <div class="spec">
            <dt>
              <spring:message code="bytrox.account.accounttypes.017" />
            </dt>
            <dd>100</dd>
          </div>
          <div class="spec">
            <dt>
              <spring:message code="bytrox.account.accounttypes.018" />
            </dt>
            <dd>
              <spring:message code="bytrox.account.accounttypes.019" />
            </dd>
          </div>
          <div class="spec">
            <dt>
              <spring:message code="bytrox.account.accounttypes.020" />
            </dt>
            <dd>0.01</dd>
          </div>
          <div class="spec">
            <dt>
              <spring:message code="bytrox.account.accounttypes.021" />
            </dt>
            <dd>
              <spring:message code="bytrox.account.accounttypes.022" />
            </dd>
          </div>
          <div class="spec">
            <dt>
              <spring:message code="bytrox.account.accounttypes.023" />
            </dt>
            <dd>
              <spring:message code="bytrox.account.accounttypes.024" />
            </dd>
          </div>
          <div class="spec">
            <dt>
              <spring:message code="bytrox.account.accounttypes.025" />
            </dt>
            <dd>500</dd>
          </div>
          <div class="spec">
            <dt>
              <spring:message code="bytrox.account.accounttypes.026" />
            </dt>
            <dd>
              <spring:message code="bytrox.account.accounttypes.027" />
            </dd>
          </div>
          <div class="spec">
            <dt>
              <spring:message code="bytrox.account.accounttypes.028" />
            </dt>
            <dd>
              <spring:message code="bytrox.account.accounttypes.029" />
            </dd>
          </div>
        </dl><a class="btn btn-primary mt40" href="#">
          <spring:message code="bytrox.account.accounttypes.030" />
        </a>
      </section>
      <div class="account-notes">
        <p><span class="note-marker">*</span>
          <spring:message code="bytrox.account.accounttypes.031" /><br><span class="note-marker">**</span>
          <spring:message code="bytrox.account.accounttypes.032" /><br><span class="note-marker">***</span>
          <spring:message code="bytrox.account.accounttypes.033" />
        </p>
        <p>
          <spring:message code="bytrox.account.accounttypes.034" />
        </p>
        <p><span class="note-marker">****</span>
          <spring:message code="bytrox.account.accounttypes.035" />
        </p>
      </div>
    </div>
  </section>
  <section class="cta">
    <div class="container">
      <h2>
        <spring:message code="bytrox.account.accounttypes.036" />
      </h2>
      <p>
        <spring:message code="bytrox.account.accounttypes.037" />
      </p><a class="btn btn-light" href="${ctx}/${siteLang}/account-types">
        <spring:message code="bytrox.account.accounttypes.038" />
      </a><a class="btn" style="background:rgba(255,255,255,.2);color:#fff" href="#">
        <spring:message code="bytrox.account.accounttypes.039" />
      </a>
    </div>
  </section>
</main>
<jsp:include page="../frame/bytroxFooter.jsp" />
