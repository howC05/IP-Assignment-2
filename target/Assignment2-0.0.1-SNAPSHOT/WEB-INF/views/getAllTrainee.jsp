<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>All Trainees</title>
</head>
<body>
    <h1>Trainee List</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Weight</th>
            <th>Height</th>
            <th>BMI</th>
        </tr>
        <c:forEach items="${trainees}" var="trainee">
            <tr>
                <td><c:out value="${trainee.id}" /></td>
                <td><c:out value="${trainee.name}" /></td>
                <td><c:out value="${trainee.weight}" /></td>
                <td><c:out value="${trainee.height}" /></td>
                <td><c:out value="${trainee.BMI}" /></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
