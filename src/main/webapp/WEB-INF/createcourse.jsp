<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<jsp:include page="headeradmin.jsp"><jsp:param
        name="title" value="Create course" />
</jsp:include>
<div id="middle">
    <h2 style="text-align: left;">
        <b>Enter User Details</b>
    </h2>
    <c:if test="${message != null}">
        <fieldset>
            <h3>
                <span style="color: red"> ${message}</span>
            </h3>
        </fieldset>
    </c:if>
    <form action="createcourse.php?page=createcourse" method="post">
        <table>
            <tr>
                <td align="right"><b><t:field mandatory="yes"
                                              text="Course name"></t:field></b></td>
                <td align="left"><input type="text" size="25" maxlength="50"
                                        name="coursename" id="coursename" /></td>
            </tr>
            <tr>
                <td align="right"><b><t:field mandatory="yes"
                                              text="Course Code"></t:field></b></td>
                <td align="left"><input type="text" size="25"
                                         name="coursecode" id="coursecode" /></td>
            </tr>
            <tr>
                <td align="right"><b>Min student</b></td>
                <td align="left"><input type="number" size="50" maxlength="50"
                                        name="minstudent" id="minstudent" /></td>
            </tr>
            <tr>
                <td align="right"><b>Max student</b></td>
                <td align="left"><input type="number" size="50" maxlength="50"
                                        name="maxstudent" id="maxstudent" /></td>
            </tr>
            <tr>
                <td align="right"><b>Start date</b></td>
                <td align="left"><input type="date" size="50" maxlength="50"
                                        name="start" id="start" /></td>
            </tr>

            <tr>
                <td align="right"><b>End date</b></td>
                <td align="left"><input type="date" size="50" maxlength="50"
                                        name="end" id="end" /></td>
            </tr>
                <td align="right">&nbsp;</td>
                <td align="left"><input type="submit" name="saveDataUser"
                                        value="Create course" /></td>
            </tr>
        </table>
        <a href="listcourse.php?page=courses&&action=list">All courses</a>
    </form>
</div>
<%@ include file="footer.jsp"%>
