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
            height: 600px; /* Updated height */
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
        input[type="password"]
         {
            width: 80%;
            height: 40px;
            margin: 10px;
            border: none;

            color: white;
            font-size: 16px;
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
        }
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
        <h2>Enter Student Details</h2>
        <c:if test="${message != null}">
            <fieldset>
                <h3>
                    <span style="color: red">${message}</span>
                </h3>
            </fieldset>
        </c:if>
        <form action="createstudent.php?page=createstudent" method="post">
            <table>
                <tr>
                    <td align="right"><b><t:field mandatory="yes" text="studentfname"></t:field></b></td>
                    <td align="left"><input type="text" size="25" maxlength="50" name="firstName" id="firstName"></td>
                </tr>
                <tr>
                    <td align="right"><b><t:field mandatory="yes" text="studentfname"></t:field></b></td>
                    <td align="left"><input type="text" size="25" maxlength="50" name="lastName" id="lastName"></td>
                </tr>
                <tr>
                    <td align="right"><b>Gender</b></td>
                    <td align="left"><input type="text" size="50" maxlength="50" name="gender" id="gender"></td>
                </tr>
                <tr>
                    <td align="right"><b>Email</b></td>
                    <td align="left"><input type="text" size="50" maxlength="50" name="email" id="email"></td>
                </tr>
                <tr>
                    <td align="right"><b>DOB</b></td>
                    <td align="left"><input type="date" size="50" maxlength="50" name="dateOfBirth" id="dateOfBirth"></td>
                </tr>
                <tr>
                    <td align="right"><b>Address_id</b></td>
                    <td align="left"><input type="number" size="50" maxlength="50" name="address" id="address"></td>
                </tr>
                <tr>
                    <td align="right"><b>PhoneNumber</b></td>
                    <td align="left"><input type="text" size="50" maxlength="50" name="phoneNumber" id="phoneNumber"></td>
                </tr>
                <tr>
                    <td align="right">&nbsp;</td>
                    <td align="left"><input type="submit" name="saveStd" value="Create Student"></td>
                </tr>
            </table>
        </form>
        <a href="liststudents.php?page=students&&action=list">All students</a>
    </div>
</div>
</body>
</html>
