<!DOCTYPE html>
<html>
<head>
    <title>Create Course</title>
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
            height: 600px; /* Increased height to accommodate the content */
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
        }

        h2 {
            text-align: left;
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
        }
    </style>
</head>
<body>
<div class="container">
    <div class="subcontainer1"></div>
    <div class="subcontainer2">
        <h2>Enter Course Details</h2>
        <c:if test="${message != null}">
            <fieldset>
                <h3>
                    <span style="color: red">${message}</span>
                </h3>
            </fieldset>
        </c:if>
        <form action="createcourse.php?page=createcourse" method="post">
            <table>
                <tr>
                    <td align="right"><b><t:field mandatory="yes" text="Course name"></t:field></b></td>
                    <td align="left"><input type="text" size="25" maxlength="50" name="coursename" id="coursename"></td>
                </tr>
                <tr>
                    <td align="right"><b><t:field mandatory="yes" text="Course Code"></t:field></b></td>
                    <td align="left"><input type="text" size="25" name="coursecode" id="coursecode"></td>
                </tr>
                <tr>
                    <td align="right"><b>Min student</b></td>
                    <td align="left"><input type="number" size="50" maxlength="50" name="minstudent" id="minstudent"></td>
                </tr>
                <tr>
                    <td align="right"><b>Max student</b></td>
                    <td align="left"><input type="number" size="50" maxlength="50" name="maxstudent" id="maxstudent"></td>
                </tr>
                <tr>
                    <td align="right"><b>Start date</b></td>
                    <td align="left"><input type="date" size="50" maxlength="50" name="start" id="start"></td>
                </tr>
                <tr>
                    <td align="right"><b>End date</b></td>
                    <td align="left"><input type="date" size="50" maxlength="50" name="end" id="end"></td>
                </tr>
                <tr>
                    <td align="right">&nbsp;</td>
                    <td align="left"><input type="submit" name="saveDataUser" value="Create Course"></td>
                </tr>
            </table>
        </form>
    </div>
</div>
</body>
</html>