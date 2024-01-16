<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Program</title>
</head>
<body style="background-color:#ffff99">
	<h1>Add Program</h1>
    <form action="addedProgram" method="post">
        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name"><br>
        <label for="day">Day(dd/mm/yyyy):</label><br>
        <input type="text" id="day" name="day"><br>
        <label for="time">Time(AM/PM):</label><br>
        <input type="text" id="time" name="time"><br>
        <label for="note">Note:</label><br>
        <input type="text" id="note" name="note"><br>
        <label for="instructor_id">Instructor ID:</label><br>
        <input type="text" id="instructor_id" name="instructor_id"><br><br>
        <input type="submit" value="Add Program">
    </form>
    <a href="${pageContext.request.contextPath}/"><br>Back to Main Menu</a>
</body>
</html>
