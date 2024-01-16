<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Program</title>
</head>
<body style="background-color:#ffff99">
    <h1>Program Updated</h1>
    <p><c:out value="Program updated successfully."/></p>
    <a href="${pageContext.request.contextPath}/program/updateProgram"><br>Update Another Program</a><br><br>
    <a href="${pageContext.request.contextPath}/"><br>Back to Main Menu</a>
</body>
</html>