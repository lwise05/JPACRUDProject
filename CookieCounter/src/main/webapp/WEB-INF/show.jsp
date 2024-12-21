<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie Details</title>
</head>
<body>

<a href="home.do">Return Home</a>
<div>

<c:choose>
<%--<c:when test="${film.id <= 1000}">--%>
<c:when test="${! empty cookieCrumb}">
  <h5>${cookieCrumb.name}</h5>
  <li>Description: ${cookieCrumb.description}</li>
  </c:when>
  
  <c:otherwise>Cookie not found</c:otherwise>
  </c:choose>
  
</div>

</body>
</html>