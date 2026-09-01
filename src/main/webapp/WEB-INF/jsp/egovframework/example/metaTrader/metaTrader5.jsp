<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../frame/bytroxHeader.jsp" />
<main>
  <section>
    <div class="narrow mt5-hero">
      <div>
        <h1><span>
            <spring:message code="bytrox.metatrader.metatrader5.001" />
          </span>
          <spring:message code="bytrox.metatrader.metatrader5.002" />
        </h1>
        <p>
          <spring:message code="bytrox.metatrader.metatrader5.003" />
        </p><a class="btn btn-primary" href="https://download.terminal.free/cdn/web/metaquotes.ltd/mt5/MetaTrader5.pkg.zip?utm_source=www.metatrader5.com&utm_campaign=download.mt5.macos">
          <spring:message code="bytrox.metatrader.metatrader5.004" />
        </a> <a class="btn btn-dark" href="https://download.terminal.free/cdn/web/bytrox.global.limited/mt5/bytroxglobal5setup.exe">
          <spring:message code="bytrox.metatrader.metatrader5.005" />
        </a>
      </div><img src="${ctx}/images/mt5-hero.png" alt="MetaTrader 5 trading platform devices">
    </div>
  </section>
  <section class="section">
    <div class="narrow">
      <h2 style="font-size:38px">
        <spring:message code="bytrox.metatrader.metatrader5.006" />
      </h2>
      <div class="choose-grid">
        <article class="choose-card"><img src="${ctx}/images/mt5-insights.svg" alt="">
          <h3>
            <spring:message code="bytrox.metatrader.metatrader5.007" />
          </h3>
          <p>
            <spring:message code="bytrox.metatrader.metatrader5.008" />
          </p>
        </article>
        <article class="choose-card"><img src="${ctx}/images/mt5-execution.svg" alt="">
          <h3>
            <spring:message code="bytrox.metatrader.metatrader5.009" />
          </h3>
          <p>
            <spring:message code="bytrox.metatrader.metatrader5.010" />
          </p>
        </article>
        <article class="choose-card"><img src="${ctx}/images/mt5-strategy.svg" alt="">
          <h3>
            <spring:message code="bytrox.metatrader.metatrader5.011" />
          </h3>
          <p>
            <spring:message code="bytrox.metatrader.metatrader5.012" />
          </p>
        </article>
        <article class="choose-card"><img src="${ctx}/images/mt5-flexibility.svg" alt="">
          <h3>
            <spring:message code="bytrox.metatrader.metatrader5.013" />
          </h3>
          <p>
            <spring:message code="bytrox.metatrader.metatrader5.014" />
          </p>
        </article>
      </div>
    </div>
  </section>
  <section class="mt5-platform">
    <div class="narrow"><img src="${ctx}/images/economic-devices.png" alt="MetaTrader 5 on laptop and mobile">
      <h2 class="section-title">
        <spring:message code="bytrox.metatrader.metatrader5.015" />
      </h2>
      <p class="section-lead">
        <spring:message code="bytrox.metatrader.metatrader5.016" />
      </p>
      <div class="download-row"><a class="btn btn-primary" href="https://download.terminal.free/cdn/web/bytrox.global.limited/mt5/bytroxglobal5setup.exe">
          <spring:message code="bytrox.metatrader.metatrader5.017" />
        </a><a class="btn btn-primary" href="https://download.terminal.free/cdn/web/metaquotes.ltd/mt5/MetaTrader5.pkg.zip?utm_source=www.metatrader5.com&utm_campaign=download.mt5.macos">
          <spring:message code="bytrox.metatrader.metatrader5.018" />
        </a><a class="btn btn-primary" href="https://play.google.com/store/apps/details?id=net.metaquotes.metatrader5&pcampaignid=web_share">
          <spring:message code="bytrox.metatrader.metatrader5.019" />
        </a><a class="btn btn-primary" href="https://apps.apple.com/us/app/metatrader-5/id413251709">
          <spring:message code="bytrox.metatrader.metatrader5.020" />
        </a></div><a href="${ctx}/${siteLang}/account-types" class="green" style="display:inline-block;margin-top:23px">
        <spring:message code="bytrox.metatrader.metatrader5.021" />
      </a>
    </div>
  </section>
  <section class="opening">
    <div class="narrow">
      <h2>
        <spring:message code="bytrox.metatrader.metatrader5.022" /><br>
        <spring:message code="bytrox.metatrader.metatrader5.023" />
      </h2>
      <div class="opening-grid">
        <article class="opening-card"><img src="${ctx}/images/mt5-register.svg" alt="">
          <h3>
            <spring:message code="bytrox.metatrader.metatrader5.024" />
          </h3>
          <p>
            <spring:message code="bytrox.metatrader.metatrader5.025" />
          </p>
        </article>
        <article class="opening-card"><img src="${ctx}/images/mt5-fund.svg" alt="">
          <h3>
            <spring:message code="bytrox.metatrader.metatrader5.026" />
          </h3>
          <p>
            <spring:message code="bytrox.metatrader.metatrader5.027" />
          </p>
        </article>
        <article class="opening-card"><img src="${ctx}/images/mt5-trade.svg" alt="">
          <h3>
            <spring:message code="bytrox.metatrader.metatrader5.028" />
          </h3>
          <p>
            <spring:message code="bytrox.metatrader.metatrader5.029" />
          </p>
        </article>
      </div>
      <div class="center"><a class="btn btn-primary" href="${ctx}/${siteLang}/account-types">
          <spring:message code="bytrox.metatrader.metatrader5.030" />
        </a></div>
    </div>
  </section>
</main>
<jsp:include page="../frame/bytroxFooter.jsp" />
