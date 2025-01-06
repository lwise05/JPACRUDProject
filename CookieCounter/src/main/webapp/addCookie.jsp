<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add a Cookie</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
	
<link rel="stylesheet" href="additionalStyles.css">

<!-- <style>
body, html {
	font-family: monospace;
	height: 100%;
	background-color:fdeafc;
}

h1 {
	text-align: center;
}

.topnav {
	overflow: hidden;
	background-color: #f084e2;
}
* {
  box-sizing: border-box;
}

.backgroundImage {
	background-image:
		url("https://s.hdnux.com/photos/01/25/37/56/22412210/7/1920x0.jpg");
		/* url("https://www.mashed.com/img/gallery/instagram-is-pumped-for-crumbl-cookies-new-milk-inspired-flavor/intro-1663634033.jpg"); */
	height: 25%;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}

.form {
	position: absolute;
	
	margin: 20px;
	max-width: 300px;
	padding: 16px;
	background-color: #fbd3f9;
}

button {
	border-radius: 12px;
	background-color: white;
}

button:hover {
	background-color: #a4278e; /* pink/purple */
	color: white;
}

.btn {
	float: left;
	padding: 20px 16px;
}
</style>
 -->

</head>
<body>
	<div class="topnav">
		<a href="home.do" class="btn"><button>Return Home</button></a>
		<h1>The Cookie Counter</h1>
	</div>

	<div class="backgroundImage"></div>

	<div class="addCookieForm">
		<form action="addCookie.do" class="form" method="POST">
			<h1>Add a cookie to the list!</h1>

			<input type="text" placeholder="Cookie name" name="name" required><br>
			<input type="text" placeholder="Cookie description"
				name="description"><br> Rating: <select name="rating"
				placeholder="rating">
				<option value="Bad">Bad</option>
				<option value="Good">Good</option>
				<option value="Great">Great</option>
			</select><br> <input type="text" placeholder="When did you try it?"
				name="lastDateAte"><br> <input type="text"
				placeholder="Add cookie image" name="cookieImage"><br>
			<!-- <input type="submit" value="add cookie" /> -->
			<button type="submit" value="add cookie">Add Cookie</button>
		</form>
	</div>
	<!-- <a href="home.do">Return Home</a> -->

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>