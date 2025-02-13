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
<link rel="stylesheet" href="additionalStyles.css">
</head>
<body>
<div class="topnav">
		<a href="home.do" class="btn"><button>Return Home</button></a>
		<h1>The Cookie Counter</h1>
	</div>
<div class="backgroundImage"></div>

	<form action="updateCookie.do" class="form" method="POST">
	<h1>Update a cookie!</h1>
	<input type="hidden" name="id" value="${updateCookie.id}">
	Cookie name: <input type="text" value="${updateCookie.name}" name="name"/><br> 
	Description: <input type="text" value="${updateCookie.description}" name="description"><br>
	Rating: <select name="rating">
				<option value="Bad">Bad</option>
				<option value="Good">Good</option>
				<option value="Great">Great</option>
			</select><br>
	Calories: <input type="text" value="${updateCookie.calories}" name="calories"><br>
	Upload cookie image:<input type="text" value="${updateCookie.cookieImage}" name="cookieImage"><br>
	<p>*look for image on Crumbl website</p>
	<button type="submit" value="update cookie">Update Cookie</button>
	</form>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>