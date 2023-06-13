<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<jsp:include page="headerlogin.jsp">
	<jsp:param value="Login page" name="title" />
</jsp:include>

<div id="middle">
		<form action="login.php" method="post">
			<table>
				<tr>
					<td align="right"><b><t:field mandatory="yes"
								text="Username"></t:field></b></td>
					<td align="left"><input type="text" size="25" maxlength="50"
						name="username" id="username" /></td>
				</tr>
				<tr>
					<td align="right"><b><t:field mandatory="yes"
								text="Password"></t:field></b></td>
					<td align="left"><input type="password" size="25"
						maxlength="50" name="password" id="password" /></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
				</tr>

				<tr bgcolor="gray">
					<td align="right">&nbsp;</td>
					<td align="left"><input type="submit" value="Login" /></td>
				</tr>
			</table>
		</form>
		<c:if test="${authenticatedUser ==null}">
			<table>
				<tr>
					<td align="center"><a
						href="createuser.php?page=createuser"> <img
							src="icons/user_add.png" /> New User Registration
					</a></td>
				</tr>
			</table>
		</c:if>
</div>
<%@ include file="footerlogin.jsp"%>

<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>

<%--    <meta charset="UTF-8">--%>
<%--    <title>Sign Up</title>--%>
<%--    <meta http-equiv="x-ua-compatible" content="ie=edge">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1">--%>

<%--</head>--%>
<%--<style>--%>

<%--    * {--%>
<%--        box-sizing: border-box;--%>
<%--    }--%>

<%--    html {--%>
<%--        height: 100%;--%>
<%--    }--%>

<%--    body {--%>

<%--        color: #7e8ba3;--%>
<%--        font: 300 1rem/1.5 Helvetica Neue, sans-serif;--%>
<%--        margin: 0;--%>
<%--        min-height: 100%;--%>
<%--    }--%>

<%--    .align {--%>
<%--        align-items: center;--%>
<%--        display: flex;--%>
<%--        flex-direction: row;--%>
<%--    }--%>

<%--    .align__item--start {--%>
<%--        align-self: flex-start;--%>
<%--    }--%>

<%--    .align__item--end {--%>
<%--        align-self: flex-end;--%>
<%--    }--%>


<%--    .site__logo {--%>
<%--        margin-bottom: 2rem;--%>
<%--    }--%>

<%--    input {--%>
<%--        border: 0;--%>
<%--        font: inherit;--%>
<%--    }--%>

<%--    input::placeholder {--%>
<%--        color: #7e8ba3;--%>
<%--    }--%>

<%--    .form__field {--%>
<%--        margin-bottom: 1rem;--%>
<%--    }--%>

<%--    .form input {--%>
<%--        outline: 0;--%>
<%--        padding: 0.5rem 1rem;--%>
<%--    }--%>

<%--    .form input[type="type"],--%>
<%--    .form input[type="password"] {--%>
<%--        width: 100%;--%>
<%--    }--%>

<%--    .grid {--%>
<%--        margin: 0 auto;--%>
<%--        max-width: 25rem;--%>
<%--        width: 100%;--%>
<%--    }--%>

<%--    h2 {--%>
<%--        font-size: 1.5rem;--%>
<%--        font-weight: 100;--%>
<%--        margin: 0 0 1rem;--%>
<%--        text-transform: uppercase;--%>
<%--    }--%>

<%--    svg {--%>
<%--        height: auto;--%>
<%--        max-width: 100%;--%>
<%--        vertical-align: middle;--%>
<%--    }--%>

<%--    a {--%>
<%--        color: #7e8ba3;--%>
<%--    }--%>

<%--    .register {--%>
<%--        box-shadow: 0 0 10px #000;--%>
<%--        text-align: center;--%>
<%--        padding: 4rem 2rem;--%>
<%--    }--%>

<%--    .register input {--%>
<%--        background-color: transparent;--%>
<%--        border: 1px solid #242c37;--%>
<%--        border-radius: 999px;--%>
<%--        text-align: center;--%>
<%--    }--%>

<%--    .register input[type="email"] {--%>
<%--        background-repeat: no-repeat;--%>
<%--        background-position: 1rem 50%;--%>
<%--    }--%>



<%--</style>--%>
<%--<body class="align">--%>

<%--<div class="grid align__item">--%>

<%--    <div class="register">--%>

<%--        <h2>Login</h2>--%>

<%--        <form action="login.php" method="post" class="form">--%>

<%--            <div class="form__field">--%>
<%--                <input type="type" placeholder="enter username" id="username">--%>
<%--            </div>--%>

<%--            <div class="form__field">--%>
<%--                <input type="password" placeholder="enter password" id="password">--%>
<%--            </div>--%>

<%--            <div class="form__field">--%>
<%--                <input type="submit" value="Login">--%>
<%--            </div>--%>

<%--        </form>--%>

<%--        <p>Already have an account? <a href="createuser.php?page=createuser">Log in</a></p>--%>

<%--    </div>--%>

<%--</div>--%>

<%--</body>--%>
<%--</html>--%>




