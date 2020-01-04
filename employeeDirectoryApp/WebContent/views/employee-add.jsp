<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Employee</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>

	<div class="container">
	<div class="float-right">
	<a href="${pageContext.request.contextPath}/logout.jsp">Logout</a>
	
	</div>
	    
		<h1>Employee Edit</h1>
		
		<form action="${pageContext.request.contextPath}/EmployeeController" method="POST">
		<input type="hidden" value="${employee.id}" name="id"> 
		Enter name: <input type="text" name="firstname" value="${employee.name }"/><br>
		Enter DOB: <input type="date" name="dob" value="${employee.dob }"/><br>
		Enter Department : <input type="text" name="department" value="${employee.department }"/><br>
		<button type="submit" class="btn btn-primary">save</button>
		
		</form>
		

	</div>
</body>
</html>