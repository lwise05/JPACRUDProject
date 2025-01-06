<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie Details</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

<link rel="stylesheet" href="additionalStyles.css">
</head>
<body>


<div class="topnav">
	<a href="home.do" class="btn"><button>Return Home</button></a>
	<h1>The Cookie Counter</h1>
</div>

<div class="backgroundImage"></div>

<div>
<c:choose>
<%--<c:when test="${film.id <= 1000}">--%>
<c:when test="${! empty cookieCrumb}">
 <img alt="${cookieCrumb.name} image" src="${pageContext.request.contextPath}${cookieCrumb.cookieImage}"/>
  <h1>${cookieCrumb.name} (Id: ${cookieCrumb.id})</h1>
  <li>Description: ${cookieCrumb.description}</li>
  <li>Rating: ${cookieCrumb.rating}</li>
  <li>Calories: ${cookieCrumb.calories}</li>
  
  <form action="updateCookie.jsp" method="POST">
		<input type="hidden" name="cookieId" value="${cookieCrumb.id}">
		<button type="submit" name="updateCookie" value="Update Cookie">Update Cookie</button></a>
  </form>	  
			
  <form action="deleteCookie.do" method="POST">
		<input type="hidden" name="cookieId" value="${cookieCrumb.id}">
		<button type="submit" id="deleteCookie" name="deleteCookie" value="Delete Cookie">Delete Cookie</button>
  </form>
  </c:when>
  
  <c:otherwise>Cookie not found with that Id</c:otherwise>
  </c:choose>
  
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>