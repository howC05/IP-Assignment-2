<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Trainee</title>
</head>
<body style="background-color:#66ccff">
    <h1>Trainee Updated</h1>
    <c:out value="${message}" escapeXml="true"/>
    <a href="${pageContext.request.contextPath}/trainee/updateTrainee"><br>Update Another Trainee</a><br><br>
    <a href="${pageContext.request.contextPath}/"><br>Back to Main Menu</a>
</body>
</html>