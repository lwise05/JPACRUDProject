<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Cookie</title>
</head>
<body>

	<form action="updateCookie.do" method="POST">
	<input type="hidden" name="id" value="${crumb.id}">
	Cookie name: <input type="text" required placeholder="${crumb.name}" name="name"><br> 
	Description: <input type="text" value="${crumb.description}" name="description"><br>
	Rating: <select name="rating">
				<option value="Bad">Bad</option>
				<option value="Good">Good</option>
				<option value="Great">Great</option>
			</select><br>
	Date you last tried it: <input type="text" value="${crumb.lastDateAte}" name="lastDateAte"><br>
	Upload cookie image:<input type="text" value="${crumb.cookieImage}" name="cookieImage"><br>
	<input type="submit" class="submit-button" value="Update Cookie"/>
	</form>


</body>
</html>