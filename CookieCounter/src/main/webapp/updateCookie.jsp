<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Cookie</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="styleSheet.css">
</head>
<body>

	<form action="updateCookieInDB.do" method="POST">
	<input type="hidden" name="id" value="${crumb.id}">
	Cookie name: <input type="text" value="${crumb.name}" name="name"/><br> 
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


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>