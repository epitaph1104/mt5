<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" scope="request" />
<c:set var="siteLang" value="${sessionScope.lang}" scope="request" />
<c:if test="${empty siteLang}">
  <c:set var="siteLang" value="en" scope="request" />
</c:if>
<!doctype html>
<html lang="${siteLang}">

<head>
<script id="Cookiebot" src="https://consent.cookiebot.com/uc.js" data-cbid="703ed9a9-f52f-46fe-8bcd-a025446c0bab" data-blockingmode="auto" type="text/javascript"></script>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>
    <spring:message code="bytrox.frame.bytroxheader.001" />
  </title>
  <link rel="icon" type="image/png" href="${ctx}/images/bxtorxfavicon.png">
  <link rel="stylesheet" href="${ctx}/css/bytrox.css?v=20260827-7">
</head>

<body>
  <header class="site-header">
    <div class="header-inner">
      <a class="brand" href="${ctx}/${siteLang}/main"><img src="${ctx}/images/header-logo.svg" alt="ByTrox"></a>
      <nav class="main-nav" aria-label="Primary navigation">
        <div class="nav-item has-menu"><a href="${ctx}/${siteLang}/trading/forex">
            <spring:message code="bytrox.frame.bytroxheader.002" />
          </a>
          <div class="dropdown"><a href="${ctx}/${siteLang}/trading/forex">
              <spring:message code="bytrox.frame.bytroxheader.003" />
            </a><a href="${ctx}/${siteLang}/trading/indices">
              <spring:message code="bytrox.frame.bytroxheader.004" />
            </a><a href="${ctx}/${siteLang}/trading/commodotles">
              <spring:message code="bytrox.frame.bytroxheader.005" />
            </a><a href="${ctx}/${siteLang}/trading/metals">
              <spring:message code="bytrox.frame.bytroxheader.006" />
            </a></div>
        </div>
        <div class="nav-item has-menu"><a href="${ctx}/${siteLang}/account-types">
            <spring:message code="bytrox.frame.bytroxheader.007" />
          </a>
          <div class="dropdown"><a href="${ctx}/${siteLang}/account-types">
              <spring:message code="bytrox.frame.bytroxheader.008" />
            </a></div>
        </div>
        <div class="nav-item has-menu"><a href="${ctx}/${siteLang}/trading-hours">
            <spring:message code="bytrox.frame.bytroxheader.009" />
          </a>
          <div class="dropdown"><a href="${ctx}/${siteLang}/deposit-withdrawals">
              <spring:message code="bytrox.frame.bytroxheader.010" />
            </a><a href="${ctx}/${siteLang}/trading-hours">
              <spring:message code="bytrox.frame.bytroxheader.011" />
            </a></div>
        </div>
        <div class="nav-item has-menu"><a href="${ctx}/${siteLang}/metaTrader5">
            <spring:message code="bytrox.frame.bytroxheader.012" />
          </a>
          <div class="dropdown"><a href="${ctx}/${siteLang}/metaTrader5">
              <spring:message code="bytrox.frame.bytroxheader.013" />
            </a><a href="${ctx}/${siteLang}/tool/economicCalender">
              <spring:message code="bytrox.frame.bytroxheader.014" />
            </a></div>
        </div>
        <div class="nav-item has-menu"><a href="${ctx}/${siteLang}/company">
            <spring:message code="bytrox.frame.bytroxheader.015" />
          </a>
          <div class="dropdown"><a href="${ctx}/${siteLang}/company">
              <spring:message code="bytrox.frame.bytroxheader.016" />
            </a><a href="${ctx}/${siteLang}/cs/notice">
              <spring:message code="bytrox.frame.bytroxheader.017" />
            </a><a href="${ctx}/${siteLang}/cs/contactUS">
              <spring:message code="bytrox.frame.bytroxheader.018" />
            </a></div>
        </div>
        <div class="mobile-language-menu">
          <strong>
            <spring:message code="bytrox.common.language" />
          </strong>
          <div><a class="${siteLang == 'en' ? 'active' : ''}" href="${ctx}/en/main">EN</a><a class="${siteLang == 'ko' ? 'active' : ''}"
              href="${ctx}/ko/main">KO</a><a class="${siteLang == 'cn' ? 'active' : ''}" href="${ctx}/cn/main">CN</a></div>
        </div>
      </nav>
      <div class="header-actions">
        <details class="language-switcher">
          <summary>${siteLang == 'ko' ? 'KO' : siteLang == 'cn' ? 'CN' : 'EN'}</summary>
          <div class="language-menu"><a href="${ctx}/en/main">
              <spring:message code="bytrox.frame.bytroxheader.019" />
            </a><a href="${ctx}/ko/main">
              <spring:message code="bytrox.frame.bytroxheader.020" />
            </a><a href="${ctx}/cn/main">
              <spring:message code="bytrox.frame.bytroxheader.021" />
            </a></div>
        </details>
        <a class="btn btn-primary" href="https://clientportal.bytroxfx.com">
          <spring:message code="bytrox.frame.bytroxheader.022" />
        </a><a class="btn btn-primary" href="https://clientportal.bytroxfx.com">
          <spring:message code="bytrox.frame.bytroxheader.023" />
        </a>
      </div>
      <button class="hamburger" aria-label="Menu"><span aria-hidden="true">&#9776;</span></button>
    </div>
  </header>
