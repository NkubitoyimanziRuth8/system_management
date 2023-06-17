<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
            font-family: 'Quicksand', sans-serif;
            margin: 0;
        }

        .container {
            width: 900px;
            height: 600px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
            display: flex;
            flex-direction: row;
        }

        .subcontainer1 {
            width: 50%;
            background-color: midnightblue;
        }

        .subcontainer2 {
            width: 50%;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            /*padding: 20px;*/
        }

        h2 {
            text-align: left;
            color: midnightblue;
            margin-top: 10px;
        }

        p,
        a {
            text-align: center;
            text-decoration: none;
            color: #333333;
        }

        input[type="text"],
        input[type="password"],
        input[type="number"],
        input[type="date"] {
            width: 80%;
            height: 40px;
            margin: 10px;
            border: none;
            background-color: #f2f2f2;
            color: #333333;
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
            cursor: pointer;
        }

        /* Additional styles for the first example */
        #middle {
            text-align: center;
            width: 500px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
        }

        table {
            width: 100%;
        }

        td {
            padding: 10px;
            vertical-align: top;
        }

        .error {
            color: red;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="subcontainer1"></div>
    <div class="subcontainer2">
        <div id="middle">
            <h2>Enter student marks</h2>
            <c:if test="${message != null}">
                <fieldset>
                    <h3 class="error">
                        <span>${message}</span>
                    </h3>
                </fieldset>
            </c:if>
            <form method="post" action="writeMarks">
                <table>
                    <tr>
                        <td>Exam:</td>
                        <td><input type="text" name="exam" required="required" /></td>
                    </tr>
                    <tr>
                        <td>Student Name:</td>
                        <td><input type="text" name="studentName" required="required" /></td>
                    </tr>
                    <tr>
                        <td>Subject:</td>
                        <td><input type="text" name="subject" required="required" /></td>
                    </tr>
                    <tr>
                        <td>Marks:</td>
                        <td><input type="number" name="marks" required="required" /></td>
                    </tr>
                </table>
                <input type="submit" value="Submit" />
            </form>
        </div>
    </div>
</div>
</body>
</html>
