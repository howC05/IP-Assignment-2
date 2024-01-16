<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Added Instructor</title>
</head>
<body style="background-color:#ff99c2">
    <h1>Instructor Added</h1>
    <!-- <c:out value="${message}" escapeXml="true"/> -->
    <p><c:out value="Instructor added successfully."/></p>
    <a href="${pageContext.request.contextPath}/instructor/addInstructor"><br>Add Another Instructor</a><br><br>
    <a href="${pageContext.request.contextPath}/"><br>Back to Main Menu</a>
</body>
</html>