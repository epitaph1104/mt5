<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" scope="request" />
<c:set var="siteLang" value="${sessionScope.lang}" scope="request" />
<c:if test="${empty siteLang}"><c:set var="siteLang" value="en" scope="request" /></c:if>
<!doctype html>
<html lang="${siteLang}">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>ByTrox</title>
  <link rel="icon" type="image/png" href="${ctx}/images/bxtorxfavicon.png">
  <link rel="stylesheet" href="${ctx}/css/bytrox.css?v=20260827-6">
</head>
<body>
<header class="site-header">
  <div class="header-inner">
    <a class="brand" href="${ctx}/${siteLang}/main"><img src="${ctx}/images/header-logo.svg" alt="ByTrox"></a>
    <nav class="main-nav" aria-label="Primary navigation">
      <div class="nav-item has-menu"><a href="${ctx}/${siteLang}/trading/forex">Markets</a><div class="dropdown"><a href="${ctx}/${siteLang}/trading/forex">Forex</a><a href="${ctx}/${siteLang}/trading/indices">Indices</a><a href="${ctx}/${siteLang}/trading/commodotles">Commodities</a><a href="${ctx}/${siteLang}/trading/metals">Metals</a></div></div>
      <div class="nav-item has-menu"><a href="${ctx}/${siteLang}/account-types">Account Types</a><div class="dropdown"><a href="${ctx}/${siteLang}/account-types">Compare Accounts</a></div></div>
      <div class="nav-item has-menu"><a href="${ctx}/${siteLang}/trading-hours">Trading Condition</a><div class="dropdown"><a href="${ctx}/${siteLang}/deposit-withdrawals">Deposit &amp; Withdrawal</a><a href="${ctx}/${siteLang}/trading-hours">Trading Hours</a></div></div>
      <div class="nav-item has-menu"><a href="${ctx}/${siteLang}/metaTrader5">Platforms &amp; Tools</a><div class="dropdown"><a href="${ctx}/${siteLang}/metaTrader5">MetaTrader 5</a><a href="${ctx}/${siteLang}/tool/economicCalender">Economic Calendar</a></div></div>
      <div class="nav-item has-menu"><a href="${ctx}/${siteLang}/company">About us</a><div class="dropdown"><a href="${ctx}/${siteLang}/company">About</a><a href="${ctx}/${siteLang}/cs/notice">Notice</a><a href="${ctx}/${siteLang}/cs/contactUS">Contact us</a></div></div>
    </nav>
    <div class="header-actions">
      <details class="language-switcher">
        <summary>${siteLang == 'ko' ? 'KO' : siteLang == 'cn' ? 'CN' : 'EN'}</summary>
        <div class="language-menu"><a href="${ctx}/en/main">EN</a><a href="${ctx}/ko/main">KO</a><a href="${ctx}/cn/main">CN</a></div>
      </details>
      <a class="btn btn-primary" href="https://clientportal.bytroxfx.com/login">LOGIN</a><a class="btn btn-primary" href="${ctx}/${siteLang}/account-types">OPEN ACCOUNT</a>
    </div>
    <button class="hamburger" aria-label="Menu"><span aria-hidden="true">&#9776;</span></button>
  </div>
</header>
