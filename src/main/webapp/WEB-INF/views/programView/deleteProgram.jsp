<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Program</title>
</head>
<body style="background-color:#ffff99">
	<h1>Delete Program</h1>
    <form action="deletedProgram" method="post">
        <label for="id">Program ID to Delete:</label><br>
        <input type="text" id="id" name="id">
        <input type="submit" value="Delete Program">
    </form>
    <a href="${pageContext.request.contextPath}/"><br>Back to Main Menu</a>
</body>
</html>