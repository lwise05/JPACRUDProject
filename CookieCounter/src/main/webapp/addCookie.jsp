<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add a Cookie</title>
</head>
<body>
<form action="addCookie.do" method="POST">
<h1>Add a cookie to the list!</h1>

Cookie name: <input type="text" name="name" required><br>
Description: <input type="text" name="description"><br>
Rating: <select name="rating">
<option value="Bad"> Bad</option>
<option value="Good"> Good</option>
<option value="Great"> Great</option>
</select><br>
Enter when you tried it:<input type="text" name="lastDateAte"><br>
Upload cookie image: <input type="text" name="cookieImage"><br>
<input type="submit" value="add cookie"/>
</form>

<a href="home.do">Return Home</a>
</body>
</html>