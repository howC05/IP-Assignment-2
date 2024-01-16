<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>All Instructors</title>
</head>
<body style="background-color:#ff99c2">
    <h1>Instructor List</h1>
    <a href="${pageContext.request.contextPath}/"><br>Back</a><br><br>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Gender</th>
            <th>Specialty</th>
        </tr>
        <c:forEach items="${instructors}" var="instructor">
            <tr>
                <td width="50"><c:out value="${instructor.id}" /></td>
                <td width="200"><c:out value="${instructor.name}" /></td>
                <td width="100"><c:out value="${instructor.gender}" /></td>
                <td width="200"><c:out value="${instructor.specialty}" /></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
