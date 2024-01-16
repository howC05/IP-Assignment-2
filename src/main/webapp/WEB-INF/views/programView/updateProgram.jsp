<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Update Program</title>
</head>
<body style="background-color:#ffff99">
	<h1>Update Program</h1>
    <form action="updatedProgram" method="post">
    	<label for="id">Program ID:</label><br>
        <input type="text" id="id" name="id"><br>
        <label for="name">New Name:</label><br>
        <input type="text" id="name" name="name"><br>
        <label for="day">New Day(dd/mm/yyyy):</label><br>
        <input type="text" id="day" name="day"><br>
        <label for="time">New Time(AM/PM):</label><br>
        <input type="text" id="time" name="time"><br>
        <label for="note">New Note:</label><br>
        <input type="text" id="note" name="note"><br>
        <label for="instructor_id">New Instructor ID:</label><br>
        <input type="text" id="instructor_id" name="instructor_id"><br><br>
        <input type="submit" value="Update Program">
    </form>
    <a href="${pageContext.request.contextPath}/"><br>Back to Main Menu</a>
</body>
</html>