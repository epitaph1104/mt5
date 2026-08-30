<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../frame/bytroxHeader.jsp" />
<main>
  <section class="page-space">
    <div class="narrow">
      <h1 class="section-title">
        <spring:message code="bytrox.troytool.economiccalender.001" />
      </h1>
      <p class="section-lead">
        <spring:message code="bytrox.troytool.economiccalender.002" />
      </p>
      <div class="calendar-grid">
        <article class="calendar-card"><span class="calendar-card-icon"><img src="${ctx}/images/calendar-alert.svg" alt=""></span>
          <h3>
            <spring:message code="bytrox.troytool.economiccalender.003" />
          </h3>
          <p>
            <spring:message code="bytrox.troytool.economiccalender.004" />
          </p>
        </article>
        <article class="calendar-card"><span class="calendar-card-icon"><img src="${ctx}/images/calendar-clock.svg" alt=""></span>
          <h3>
            <spring:message code="bytrox.troytool.economiccalender.005" />
          </h3>
          <p>
            <spring:message code="bytrox.troytool.economiccalender.006" />
          </p>
        </article>
        <article class="calendar-card"><span class="calendar-card-icon"><img src="${ctx}/images/calendar-bars.svg" alt=""></span>
          <h3>
            <spring:message code="bytrox.troytool.economiccalender.007" />
          </h3>
          <p>
            <spring:message code="bytrox.troytool.economiccalender.008" />
          </p>
        </article>
      </div>
      <section class="events-box">
        <h3>
          <spring:message code="bytrox.troytool.economiccalender.009" />
        </h3>
        <div class="events-cols">
          <div class="event-col"><span class="event-icon"><img src="${ctx}/images/calendar-check.svg" alt=""></span>
            <ul>
              <li>
                <spring:message code="bytrox.troytool.economiccalender.010" />
              </li>
              <li>
                <spring:message code="bytrox.troytool.economiccalender.011" />
              </li>
              <li>
                <spring:message code="bytrox.troytool.economiccalender.012" />
              </li>
              <li>
                <spring:message code="bytrox.troytool.economiccalender.013" />
              </li>
            </ul>
          </div>
          <div class="event-col"><span class="event-icon"><img src="${ctx}/images/calendar-warning.svg" alt=""></span>
            <ul>
              <li>
                <spring:message code="bytrox.troytool.economiccalender.014" />
              </li>
              <li>
                <spring:message code="bytrox.troytool.economiccalender.015" />
              </li>
              <li>
                <spring:message code="bytrox.troytool.economiccalender.016" />
              </li>
              <li>
                <spring:message code="bytrox.troytool.economiccalender.017" />
              </li>
            </ul>
          </div>
        </div>
      </section>
      <div class="center mt40"><a class="btn btn-primary" href="${ctx}/${siteLang}/account-types">
          <spring:message code="bytrox.troytool.economiccalender.018" />
        </a></div>
    </div>
  </section>
</main>
<jsp:include page="../frame/bytroxFooter.jsp" />
