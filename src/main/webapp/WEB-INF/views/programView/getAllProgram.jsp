<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>All Program</title>
</head>
<body style="background-color:#ffff99">
    <h1>Program List</h1>
    <a href="${pageContext.request.contextPath}/"><br>Back</a><br><br>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Day</th>
            <th>Time</th>
            <th>Note</th>
            <th>Instructor ID</th>
            
        </tr>
        <c:forEach items="${programs}" var="program">
            <tr>
                <td width="50"><c:out value="${program.id}" /></td>
                <td width="200"><c:out value="${program.name}" /></td>
                <td width="150" style="text-align:center"><c:out value="${program.day}" /></td>
                <td width="150" style="text-align:center"><c:out value="${program.time}" /></td>
                <td width="200"><c:out value="${program.note}" /></td>
                <td width="100"><c:out value="${program.instructor_id}" /></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
