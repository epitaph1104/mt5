<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="frame/bytroxHeader.jsp" />
<c:choose>
  <c:when test="${siteLang eq 'ko'}"><jsp:include page="main-ko.jsp" /></c:when>
  <c:when test="${siteLang eq 'cn'}"><jsp:include page="main-cn.jsp" /></c:when>
  <c:otherwise><jsp:include page="main-en.jsp" /></c:otherwise>
</c:choose>
<jsp:include page="frame/bytroxFooter.jsp" />
