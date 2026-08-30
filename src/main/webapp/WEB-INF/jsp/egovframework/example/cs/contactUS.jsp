<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../frame/bytroxHeader.jsp" />
<main>
  <section class="page-space contact-hero">
    <div class="narrow">
      <h1 class="section-title">
        <spring:message code="bytrox.cs.contactus.001" /><br><span class="green">
          <spring:message code="bytrox.cs.contactus.002" />
        </span>
      </h1>
      <p class="section-lead">
        <spring:message code="bytrox.cs.contactus.003" />
      </p>
      <h2 class="section-title" style="font-size:28px;margin-top:60px">
        <spring:message code="bytrox.cs.contactus.004" />
      </h2>
      <div class="contact-cards">
        <article class="contact-card"><img class="contact-card-icon" src="${ctx}/images/contact-faq.svg" alt="">
          <h3>
            <spring:message code="bytrox.cs.contactus.005" />
          </h3>
          <p>
            <spring:message code="bytrox.cs.contactus.006" />
          </p>
        </article>
        <article class="contact-card"><img class="contact-card-icon" src="${ctx}/images/contact-email.svg" alt="">
          <h3>
            <spring:message code="bytrox.cs.contactus.007" />
          </h3>
          <p>
            <spring:message code="bytrox.cs.contactus.008" />
          </p>
        </article>
      </div>
      <div class="contact-meta">
        <article><img class="contact-meta-icon" src="${ctx}/images/contact-chat.svg" alt="">
          <h4>
            <spring:message code="bytrox.cs.contactus.009" />
          </h4>
          <p>
            <spring:message code="bytrox.cs.contactus.010" />
          </p>
        </article>
        <article><img class="contact-meta-icon" src="${ctx}/images/contact-phone.svg" alt="">
          <h4>
            <spring:message code="bytrox.cs.contactus.011" />
          </h4>
          <p>
            <spring:message code="bytrox.cs.contactus.012" /><br>+852 30501847
          </p>
        </article>
        <article><img class="contact-meta-icon" src="${ctx}/images/contact-address.svg" alt="">
          <h4>
            <spring:message code="bytrox.cs.contactus.013" />
          </h4>
          <p>
            <spring:message code="bytrox.cs.contactus.014" />
          </p>
        </article>
        <article><img class="contact-meta-icon" src="${ctx}/images/contact-hours.svg" alt="">
          <h4>
            <spring:message code="bytrox.cs.contactus.015" />
          </h4>
          <p>
            <spring:message code="bytrox.cs.contactus.016" /><br>07:00 &ndash; 07:00
          </p>
        </article>
      </div>
    </div>
  </section>
  <section class="section">
    <div class="narrow">
      <h2 class="section-title">
        <spring:message code="bytrox.cs.contactus.017" /><br><span class="green">
          <spring:message code="bytrox.cs.contactus.018" />
        </span>
      </h2>
      <div class="photo-steps"><img src="${ctx}/images/account-opening.jpg.png" alt="Trader opening account">
        <div class="steps-overlay">
          <article><small>
              <spring:message code="bytrox.cs.contactus.019" />
            </small><img class="contact-step-icon" src="${ctx}/images/contact-register.svg" alt="">
            <h3>
              <spring:message code="bytrox.cs.contactus.020" />
            </h3>
            <p>
              <spring:message code="bytrox.cs.contactus.021" />
            </p>
          </article>
          <article><small>
              <spring:message code="bytrox.cs.contactus.022" />
            </small><img class="contact-step-icon" src="${ctx}/images/contact-fund.svg" alt="">
            <h3>
              <spring:message code="bytrox.cs.contactus.023" />
            </h3>
            <p>
              <spring:message code="bytrox.cs.contactus.024" />
            </p>
          </article>
          <article><small>
              <spring:message code="bytrox.cs.contactus.025" />
            </small><img class="contact-step-icon" src="${ctx}/images/contact-trade.svg" alt="">
            <h3>
              <spring:message code="bytrox.cs.contactus.026" />
            </h3>
            <p>
              <spring:message code="bytrox.cs.contactus.027" />
            </p>
          </article>
        </div>
      </div>
      <div class="center mt40"><a class="btn btn-primary">
          <spring:message code="bytrox.cs.contactus.028" />
        </a> <a class="btn btn-dark">
          <spring:message code="bytrox.cs.contactus.029" />
        </a></div>
    </div>
  </section>
</main>
<jsp:include page="../frame/bytroxFooter.jsp" />
