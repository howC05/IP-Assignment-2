<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Program</title>
</head>
<body style="background-color:#ffff99">
    <h1>Program Deleted</h1>
    <p><c:out value="Program deleted successfully."/><p>
    <a href="${pageContext.request.contextPath}/program/deleteProgram"><br>Delete Another Program</a><br><br>
    <a href="${pageContext.request.contextPath}/"><br>Back to Main Menu</a>
</body>
</html>