<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>All Trainees</title>
</head>
<body style="background-color:#66ccff">
    <h1>Trainee List</h1>
    <a href="${pageContext.request.contextPath}/">Back</a><br><br>
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
                <td width="50"><c:out value="${trainee.id}" /></td>
                <td width="200"><c:out value="${trainee.name}" /></td>
                <td width="100" style="text-align:center"><c:out value="${trainee.weight}" /></td>
                <td width="100" style="text-align:center"><c:out value="${trainee.height}" /></td>
                <td width="100" style="text-align:center"><c:out value="${trainee.BMI}" /></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
