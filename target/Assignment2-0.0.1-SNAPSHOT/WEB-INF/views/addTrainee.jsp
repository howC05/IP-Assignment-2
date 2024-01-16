<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Trainee</title>
</head>
<body>
	<h1>Add Trainee</h1>
    <form action="addedTrainee" method="post">
        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name"><br>
        <label for="weight">Weight:</label><br>
        <input type="text" id="weight" name="weight"><br>
        <label for="height">Height:</label><br>
        <input type="text" id="height" name="height"><br>
        <label for="bmi">BMI:</label><br>
        <input type="text" id="bmi" name="bmi"><br><br>
        <input type="submit" value="Add Trainee">
    </form>
</body>
</html>
