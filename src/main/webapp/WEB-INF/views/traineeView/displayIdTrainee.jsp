<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Trainee Details</title>
</head>
<body style="background-color:#66ccff">
    <h1>Trainee Details:</h1>
    <c:choose>
        <c:when test="${not empty trainee}">
            <p>ID: <c:out value="${trainee.id}" /></p>
            <p>Name: <c:out value="${trainee.name}" /></p>
            <p>Weight: <c:out value="${trainee.weight}" /></p>
            <p>Height: <c:out value="${trainee.height}" /></p>
            <p>BMI: <c:out value="${trainee.BMI}" /></p>
            <!-- Display other fields as needed -->
        </c:when>
        <c:otherwise>
            <p><c:out value="${message}" /></p>
        </c:otherwise>
    </c:choose>
    <a href="${pageContext.request.contextPath}/"><br>Back to Main Menu</a>
</body>
</html>
