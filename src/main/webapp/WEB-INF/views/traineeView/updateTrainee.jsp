<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Update Trainee</title>
</head>
<body style="background-color:#66ccff">
	<h1>Update Trainee</h1>
    <form action="updatedTrainee" method="post">
        <label for="id">Trainee ID:</label><br>
        <input type="text" id="id" name="id"><br>
        <label for="name">New Name:</label><br>
        <input type="text" id="name" name="name"><br>
        <label for="weight">New Weight:</label><br>
        <input type="text" id="weight" name="weight"><br>
        <label for="height">New Height:</label><br>
        <input type="text" id="height" name="height"><br>
        <label for="bmi">New BMI:</label><br>
        <input type="text" id="bmi" name="bmi"><br><br>
        <input type="submit" value="Update Trainee">
    </form>
    <a href="${pageContext.request.contextPath}/"><br>Back to Main Menu</a>
</body>
</html>