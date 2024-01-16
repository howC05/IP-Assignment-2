<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Get Instructor by ID</title>
</head>
<body style="background-color:#ff99c2">
	<h1>Get By ID Instructor</h1>
    <form action="displayIdInstructor" method="get">
        <label for="id">Enter Instructor ID:</label>
        <input type="text" id="id" name="id">
        <input type="submit" value="Submit">
    </form>
    <a href="${pageContext.request.contextPath}/"><br>Back to Main Menu</a>
</body>
</html>
