<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>The Cookie Counter</title>
</head>
<body>
<h1>Welcome To The Cookie Counter!</h1>



	<form action="getCookie.do" method="GET">
		Cookie Id: <input type="text" name="cookieId" /> 
		<input class= "btn btn-outline-primary" type="submit" value="find cookie"/>
	</form>
	<br>

<table>
<thead>
<tr>
	<th>Name</th>
	<th>Description</th>
	</tr>
</thead>
<tbody>
<c:forEach var="crumb" items="${cookieList}">
	<tr>
		<td>${crumb.name} (id: ${crumb.id}) </td>
		<td>${crumb.description}</td>
	</tr>
</c:forEach>
</tbody>
</table>
<a href="addCookie.jsp">
<button>Add a cookie</button>
</a>

<!-- <form action="addCookie.do" method="POST">
	<input type="submit" value="Add a cookie"/>
</form> -->
<%-- 	<img alt="" img src="${show.cookieImage}"> --%>
 </body>
</html>