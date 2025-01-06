<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add a Cookie</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="styleSheet.css">

</head>
<body>

<div class="addCookieForm">
<form action="addCookie.do" method="POST">
<h1>Add a cookie to the list!</h1>

<input type="text" placeholder="Cookie name" name="name" required><br>
<input type="text" placeholder="Cookie description" name="description"><br>
Rating: <select name="rating" placeholder="rating">
<option value="Bad"> Bad</option>
<option value="Good"> Good</option>
<option value="Great"> Great</option>
</select><br>
<input type="text" placeholder="When did you try it?" name="lastDateAte"><br>
<input type="text" placeholder="Add cookie image" name="cookieImage"><br>
<input type="submit" value="add cookie"/>
</form>
</div>
<a href="home.do">Return Home</a>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>