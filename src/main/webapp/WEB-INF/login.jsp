<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
	<title>RCA SMIS</title>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500&display=swap" rel="stylesheet">
	<style>
		body {
			background-color: #f2f2f2;
			width: 100vw;
			height: 100vh;
			display: flex;
			justify-content: center;
			align-items: center;
		}

		.container {
			width: 800px;
			height: 400px;
			box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
			display: flex;
			flex-direction: row;
		}

		.subcontainer1 {
			background-color: midnightblue;
			width: 50%;
		}

		.subcontainer2 {
			width: 50%;
			display: flex;
			flex-direction: column;
			align-items: center;
			justify-content: center;
		}

		h2 {
			text-align: center;
			color: midnightblue;
			font-family: 'Quicksand', sans-serif;
			margin-top: 10px;
		}

		p, a {
			text-align: center;
			font-family: 'Quicksand', sans-serif;
			text-decoration: none;
		}

		input[type="text"],
		input[type="password"],
		input[type="submit"] {
			width: 80%;
			height: 40px;
			margin: 10px;
			border: none;
			background-color: midnightblue;
			color: white;
			font-size: 16px;
			box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
		}
	</style>
</head>
<body>
<div class="container">
	<div class="subcontainer1"></div>
	<div class="subcontainer2">
		<h2>Sign In</h2>
		<c:if test="${error != null}">
			<p style="color: red">${error}</p>
		</c:if>
		<form action="login.php" method="post">
			<input type="text" placeholder="Username" required name="username">
			<input type="password" placeholder="Password" required name="password">
			<input type="submit" value="Sign In">
			<p>Create an account <span><a href="createuser.php?page=createuser"> Sign up</a></span></p>
		</form>
	</div>
</div>
</body>
</html>
