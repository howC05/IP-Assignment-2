<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Added Program</title>
</head>
<body style="background-color:#ffff99">
    <h1>Program Added</h1>
    <!-- <c:out value="${message}" escapeXml="true"/> -->
    <p><c:out value="Program added successfully."/></p>
    <a href="${pageContext.request.contextPath}/program/addProgram"><br>Add Another Program</a><br><br>
    <a href="${pageContext.request.contextPath}/"><br>Back to Main Menu</a>
</body>
</html>