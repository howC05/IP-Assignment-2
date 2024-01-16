<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Instructor Details</title>
</head>
<body style="background-color:#ff99c2">
    <h1>Instructor Details:</h1>
    <c:choose>
        <c:when test="${not empty instructor}">
            <p>ID: <c:out value="${instructor.id}" /></p>
            <p>Name: <c:out value="${instructor.name}" /></p>
            <p>Gender: <c:out value="${instructor.gender}" /></p>
            <p>Specialty: <c:out value="${instructor.specialty}" /></p>
            <!-- Display other fields as needed -->
        </c:when>
        <c:otherwise>
            <p><c:out value="${message}" /></p>
        </c:otherwise>
    </c:choose>
    <a href="${pageContext.request.contextPath}/"><br>Back to Main Menu</a>
</body>
</html>
