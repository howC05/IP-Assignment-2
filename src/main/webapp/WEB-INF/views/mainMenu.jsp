<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Fitness Program Application</title>
</head>
<style>
	.user-action{
		display:flex;
		justify-content:center;
	}
	
	h1{
		text-align:center;
	}
	
	.action{
		border:1px solid black;
		padding:20px;
		margin: 20px;
	}
</style>
<body style="background-color:#66ffcc">
	<h1>Fitness Program Application</h1>
	<div class="user-action">
	<div class="action" style="background-color:#66ccff">
    <h2>Trainee Operations</h2>
    <ul>
        <li><a href="${pageContext.request.contextPath}/trainee/addTrainee">Add Trainee</a></li>
        <li><a href="${pageContext.request.contextPath}/trainee/updateTrainee">Update Trainee</a></li>
        <li><a href="${pageContext.request.contextPath}/trainee/deleteTrainee">Delete Trainee</a></li>
        <li><a href="${pageContext.request.contextPath}/trainee/getByIdTrainee">Get Trainee by ID</a></li>
        <li><a href="${pageContext.request.contextPath}/trainee/getAllTrainee">View All Trainees</a></li>
    </ul>
    </div>
    <div class="action" style="background-color:#ff99c2">
    <h2>Instructor Operations</h2>
    <ul>
        <li><a href="${pageContext.request.contextPath}/instructor/addInstructor">Add Instructor</a></li>
        <li><a href="${pageContext.request.contextPath}/instructor/updateInstructor">Update Instructor</a></li>
        <li><a href="${pageContext.request.contextPath}/instructor/deleteInstructor">Delete Instructor</a></li>
        <li><a href="${pageContext.request.contextPath}/instructor/getByIdInstructor">Get Instructor by ID</a></li>
        <li><a href="${pageContext.request.contextPath}/instructor/getAllInstructor">View All Instructor</a></li>
    </ul>
    </div>
    <div class="action" style="background-color:#ffff99">
    <h2>Program Operations</h2>
    <ul>
        <li><a href="${pageContext.request.contextPath}/program/addProgram">Add Program</a></li>
        <li><a href="${pageContext.request.contextPath}/program/updateProgram">Update Program</a></li>
        <li><a href="${pageContext.request.contextPath}/program/deleteProgram">Delete Program</a></li>
        <li><a href="${pageContext.request.contextPath}/program/getByIdProgram">Get Program by ID</a></li>
        <li><a href="${pageContext.request.contextPath}/program/getAllProgram">View All Program</a></li>
    </ul>
    </div>
    </div>
</body>
</html>