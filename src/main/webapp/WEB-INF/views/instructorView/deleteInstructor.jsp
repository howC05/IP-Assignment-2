<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Instructor</title>
</head>
<body style="background-color:#ff99c2">
	<h1>Delete Instructor</h1>
    <form action="deletedInstructor" method="post">
        <label for="id">Instructor ID to Delete:</label><br>
        <input type="text" id="id" name="id">
        <input type="submit" value="Delete Instructor">
    </form>
    <a href="${pageContext.request.contextPath}/"><br>Back to Main Menu</a>
</body>
</html>