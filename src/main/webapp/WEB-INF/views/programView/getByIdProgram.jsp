<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Get Program by ID</title>
</head>
<body style="background-color:#ffff99">
	<h1>Get By ID Program</h1>
    <form action="displayIdProgram" method="get">
        <label for="id">Enter Program ID:</label>
        <input type="text" id="id" name="id">
        <input type="submit" value="Submit">
    </form>
    <a href="${pageContext.request.contextPath}/"><br>Back to Main Menu</a>
</body>
</html>
