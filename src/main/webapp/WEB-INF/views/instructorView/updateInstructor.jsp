<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Update Instructor</title>
</head>
<body style="background-color:#ff99c2">
	<h1>Update Instructor</h1>
    <form action="updatedInstructor" method="post">
        <label for="id">Instructor ID:</label><br>
        <input type="text" id="id" name="id"><br>
        <label for="name">New Name:</label><br>
        <input type="text" id="name" name="name"><br>
        <label for="gender">New Gender:</label><br>
        <input type="text" id="gender" name="gender"><br>
        <label for="specialty">New Specialty:</label><br>
        <input type="text" id="specialty" name="specialty"><br><br>
        <input type="submit" value="Update Instructor">
    </form>
    <a href="${pageContext.request.contextPath}/"><br>Back to Main Menu</a>
</body>
</html>