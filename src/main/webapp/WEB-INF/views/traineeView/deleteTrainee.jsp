<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Trainee</title>
</head>
<body style="background-color:#66ccff">
	<h1>Delete Trainee</h1>
    <form action="deletedTrainee" method="post">
        <label for="id">Trainee ID to Delete:</label><br>
        <input type="text" id="id" name="id">
        <input type="submit" value="Delete Trainee">
    </form>
    <a href="${pageContext.request.contextPath}/"><br>Back to Main Menu</a>
</body>
</html>