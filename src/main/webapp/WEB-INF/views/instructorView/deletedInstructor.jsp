<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Instructor</title>
</head>
<body style="background-color:#ff99c2">
    <h1>Instructor Deleted</h1>
    <p><c:out value="Instructor deleted successfully. Rows affected: ${rowsAffected}"/><p>
    <a href="${pageContext.request.contextPath}/instructor/deleteInstructor"><br>Delete Another Instructor</a><br><br>
    <a href="${pageContext.request.contextPath}/"><br>Back to Main Menu</a>
</body>
</html>