<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<jsp:include page="headeradmin.jsp">
	<jsp:param name="title" value="Create User" />
</jsp:include>

<style>
	body {
		background-color: #f2f2f2;
		width: 100vw;
		height: 100vh;
		display: flex;
		justify-content: center;
		align-items: center;
	}

	#middle {
		width: 800px;
		height: 600px; /* Increased height to accommodate the content */
		box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
		display: flex;
		flex-direction: row;
	}

	h2 {
		text-align: left;
		color: midnightblue;
		font-family: 'Quicksand', sans-serif;
		margin-top: 10px;
	}

	table {
		margin: 20px;
	}

	td {
		padding: 10px;
		text-align: right;
	}

	input[type="text"],
	input[type="password"],
	select {
		width: 100%;
		height: 40px;
		margin: 10px 0;
		border: none;
		background-color: #f2f2f2;
		color: #333333;
		font-size: 16px;
		box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
	}

	input[type="submit"] {
		width: 100%;
		height: 40px;
		margin: 10px 0;
		border: none;
		background-color: midnightblue;
		color: white;
		font-size: 16px;
		box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
	}

	.error {
		color: red;
	}
</style>

<div id="middle">
	<h2><b>Enter User Details</b></h2>
	<c:if test="${message != null}">
		<fieldset>
			<h3 class="error">${message}</h3>
		</fieldset>
	</c:if>
	<form action="createuser.php?page=createuser" method="post">
		<table>
			<tr>
				<td><b><t:field mandatory="yes" text="Username"></t:field></b></td>
				<td><input type="text" size="25" maxlength="50" name="username" id="username" /></td>
			</tr>
			<tr>
				<td><b><t:field mandatory="yes" text="Password"></t:field></b></td>
				<td><input type="password" size="25" maxlength="50" name="password" id="password" /></td>
			</tr>
			<tr>
				<td><b>User Full Name</b></td>
				<td><input type="text" size="50" maxlength="50" name="userfullname" id="userfullname" /></td>
			</tr>
			<tr>
				<td><b>Email</b></td>
				<td><input type="text" size="50" maxlength="50" name="email" id="email" /></td>
			</tr>
			<tr>
				<td><b>Role</b></td>
				<td>
					<select name="userRole" id="userRole">
						<option value="">Select Role</option>
						<c:forEach items="${userRoles}" var="userrole" varStatus="userrolestatus">
							<option value="${userrole}">
								<c:out value="${userrole.getRoleDescription()}" />
							</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" name="saveDataUser" value="Create User" /></td>
			</tr>
		</table>
	</form>
</div>

<%@ include file="footer.jsp"%>
