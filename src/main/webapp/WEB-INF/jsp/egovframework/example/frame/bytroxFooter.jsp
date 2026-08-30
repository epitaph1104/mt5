<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<footer class="site-footer">
  <div class="narrow">
    <div class="footer-grid">
      <section>
        <div class="footer-brand"><img src="${ctx}/images/brand-logo.svg" alt="ByTrox"></div>
        <p>
          <spring:message code="bytrox.frame.bytroxfooter.001" />
        </p>
      </section>
      <section>
        <h4>
          <spring:message code="bytrox.frame.bytroxfooter.002" />
        </h4>
        <ul>
          <li><a href="${ctx}/${siteLang}/company">
              <spring:message code="bytrox.frame.bytroxfooter.003" />
            </a></li>
          <li><a href="${ctx}/${siteLang}/metaTrader5">
              <spring:message code="bytrox.frame.bytroxfooter.004" />
            </a></li>
          <li><a href="${ctx}/${siteLang}/account-types">
              <spring:message code="bytrox.frame.bytroxfooter.005" />
            </a></li>
          <li><a href="${ctx}/${siteLang}/deposit-withdrawals">
              <spring:message code="bytrox.frame.bytroxfooter.006" />
            </a></li>
          <li><a href="${ctx}/${siteLang}/cs/contactUS">
              <spring:message code="bytrox.frame.bytroxfooter.007" />
            </a></li>
        </ul>
      </section>
      <section>
        <h4>
          <spring:message code="bytrox.frame.bytroxfooter.008" />
        </h4>
        <ul>
          <li><a href="${ctx}/${siteLang}/trading/forex">
              <spring:message code="bytrox.frame.bytroxfooter.009" />
            </a></li>
          <li><a href="${ctx}/${siteLang}/trading/metals">
              <spring:message code="bytrox.frame.bytroxfooter.010" />
            </a></li>
          <li><a href="${ctx}/${siteLang}/trading/commodotles">
              <spring:message code="bytrox.frame.bytroxfooter.011" />
            </a></li>
          <li><a href="${ctx}/${siteLang}/privacyPolicy">
              <spring:message code="bytrox.frame.bytroxfooter.012" />
            </a></li>
          <li><a href="${ctx}/${siteLang}/termsOfService">
              <spring:message code="bytrox.frame.bytroxfooter.013" />
            </a></li>
        </ul>
      </section>
      <section>
        <h4>
          <spring:message code="bytrox.frame.bytroxfooter.014" />
        </h4>
        <div class="contact-line"><img src="${ctx}/images/footer-email.svg" alt=""><span>
            <spring:message code="bytrox.frame.bytroxfooter.015" />
          </span></div>
        <div class="contact-line"><img src="${ctx}/images/footer-phone.svg" alt=""><span>+852 30501847<br>
            <spring:message code="bytrox.frame.bytroxfooter.016" />
          </span></div>
      </section>
    </div>
    <section class="footer-risk">
      <div class="risk-title"><img src="${ctx}/images/footer-warning.svg" alt="">
        <spring:message code="bytrox.frame.bytroxfooter.017" />
      </div>
      <div class="risk-sub">
        <spring:message code="bytrox.frame.bytroxfooter.018" />
      </div>
      <p><strong>
          <spring:message code="bytrox.frame.bytroxfooter.019" />
        </strong>
        <spring:message code="bytrox.frame.bytroxfooter.020" />
      </p>
      <p><strong>
          <spring:message code="bytrox.frame.bytroxfooter.021" />
        </strong>
        <spring:message code="bytrox.frame.bytroxfooter.022" />
      </p>
      <p><strong>
          <spring:message code="bytrox.frame.bytroxfooter.023" />
        </strong>
        <spring:message code="bytrox.frame.bytroxfooter.024" />
      </p>
      <div class="restricted"><strong><img src="${ctx}/images/footer-restricted.svg" alt="">
          <spring:message code="bytrox.frame.bytroxfooter.025" />
        </strong>
        <p>
          <spring:message code="bytrox.frame.bytroxfooter.026" /> <b>
            <spring:message code="bytrox.frame.bytroxfooter.027" />
          </b>
          <spring:message code="bytrox.frame.bytroxfooter.028" />
        </p>
      </div>
      <div class="copyright">
        <spring:message code="bytrox.frame.bytroxfooter.029" />
      </div>
    </section>
  </div>
</footer>
<script src="${ctx}/js/bytrox.js"></script>
</body>

</html>
