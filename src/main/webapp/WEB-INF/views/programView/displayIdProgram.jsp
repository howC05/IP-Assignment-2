<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Program Details</title>
</head>
<body style="background-color:#ffff99">
    <h1>Program Details:</h1>
    <c:choose>
        <c:when test="${not empty program}">
            <p>ID: <c:out value="${program.id}" /></p>
            <p>Name: <c:out value="${program.name}" /></p>
            <p>Day: <c:out value="${program.day}" /></p>
            <p>Time: <c:out value="${program.time}" /></p>
            <p>Note: <c:out value="${program.note}" /></p>
            <p>Instructor ID: <c:out value="${program.instructor_id}" /></p>
            <!-- Display other fields as needed -->
        </c:when>
        <c:otherwise>
            <p><c:out value="${message}" /></p>
        </c:otherwise>
    </c:choose>
    <a href="${pageContext.request.contextPath}/"><br>Back to Main Menu</a>
</body>
</html>
