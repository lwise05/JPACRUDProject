<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>The Cookie Counter</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="styleSheet.css">
</head>
<body>
<div class="container">

<div class="topnav"> 
	<form action="getCookie.do" method="GET">
		<input type="text" placeholder="Enter Cookie Id" name="cookieId" /> 
		<button type="submit" value="find cookie">Find Cookie</button>
	</form>
</div><br>

<div id="header">
<h1 class="welcomeHeader">Welcome To The Cookie Counter!</h1>
<iframe src="https://giphy.com/embed/7LjmRWK2YHufpBNp7c" id="rightCookie" class="giphyCookie"></iframe>
<p><a href="https://giphy.com/stickers/plsthnks-cookie-chocolatechipcookie-ptycookie-7LjmRWK2YHufpBNp7c"></a></p>
<iframe src="https://giphy.com/embed/7LjmRWK2YHufpBNp7c" id="leftCookie" class="giphyCookie"></iframe>
<p><a href="https://giphy.com/stickers/plsthnks-cookie-chocolatechipcookie-ptycookie-7LjmRWK2YHufpBNp7c"></a></p>
</div>


<table id="cookieTable">
<thead>
	<tr>
		<th>Name</th>
		<th>Description</th>
		<th>Rating</th>
		<th>Your Last Bite</th>
		<th>Image</th>
		<th></th>
	</tr>
</thead>
<tbody>
<c:forEach var="crumb" items="${cookieList}">
	<tr>
		<td>${crumb.name} (id: ${crumb.id}) </td>
		<td>${crumb.description}</td>
		<td>${crumb.rating}</td>
		<td>${crumb.lastDateAte}</td>
		<td></td>
		<td>
		<!--   <a href="updateCookie.jsp?cookieId=${crumb.id}"><button type="button" class= "btn btn-outline-primary">Update Cookie</button>-->
		<form action="updateCookie.jsp" method="POST">
		<input type="hidden" name="cookieId" value="${crumb.id}">
		<%-- 	<input type="hidden" value="${crumb.id}"/> --%>
			<button type="submit" name="updateCookie" value="Update Cookie">Update Cookie</button></a>
		</form>	  
			
			<form action="deleteCookie.do" method="POST">
			<input type="hidden" name="cookieId" value="${crumb.id}">
			<button type="submit" id="deleteCookie" name="deleteCookie" value="Delete Cookie">Delete Cookie</button>
			</form>
		</td>
	<!-- 	<a href="updateCookie.jsp"><button>Edit entry</button></td> -->
		
	</tr>
</c:forEach>
</tbody>
</table>
<a href="addCookie.jsp"><button class="addCookie">Add a cookie</button></a>


<!-- <form action="addCookie.do" method="POST">
	<input type="submit" value="Add a cookie"/>
</form> -->
<%-- 	<img alt="" img src="${show.cookieImage}"> --%>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
 </body>
</html>