<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Instructor</title>
</head>
<body style="background-color:#ff99c2">
	<h1>Add Instructor</h1>
    <form action="addedInstructor" method="post">
        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name"><br>
        <label for="gender">Gender:</label><br>
        <input type="text" id="gender" name="gender"><br>
        <label for="Specialty">Specialty:</label><br>
        <input type="text" id="specialty" name="specialty"><br><br>
        <input type="submit" value="Add Instructor">
    </form>
    <a href="${pageContext.request.contextPath}/"><br>Back to Main Menu</a>
</body>
</html>
