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
	<input type="hidden" name="id" value="${cookieToUpdate.id}">
		Cookie name: <input type="text" value="${cookieToUpdate.name}"
			name="name" required><br> 
		Description: <input type="text" placeholder="${cookieToUpdate.description}" value="${cookieToUpdate.description}" name="description">
		Rating: <select name="rating">
			<option value="Bad">Bad</option>
			<option value="Good">Good</option>
			<option value="Great">Great</option>
		</select><br>
		Date you last tried it: <input type="text" value="${cookieToUpdate.lastDateAte}" name="lastDateAte">
		Upload cookie image:<input type="text" value="${cookieToUpdate.cookieImage}" name="cookieImage">
		<input type="submit" class="submit-button" value="Update Cookie"/>
	</form>


</body>
</html>