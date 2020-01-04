<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>

<%

String email =(String) session.getAttribute("email");

if(email==null){
	response.sendRedirect("index.jsp");
}
%>

	<div class="container">
	
	<div class="float-right">
	<a href="${pageContext.request.contextPath}/logout.jsp">Logout</a>
	
	</div>
		<h1>Employee List</h1>
		<p>${message}</p>
		<button type="button" class="btn btn-primary" onclick="window.location.href='views/employee-add.jsp'"> Add Employee</button>
		
		<table border="1" class="table table-striped table-bordered">
			<thead class="thead-dark">
			<tr>
				<th>Name</th>
				<th>Department</th>
				<th>Date of Birth</th>
				<th>Action</th>
			<tr>
			 </thead>
				<c:forEach items="${list}" var="employee">
					<tr>
						<th>${employee.name}</th>
						<th>${employee.department}</th>
						<th>${employee.dob}</th>
						<th> 
						
						<a href = "${pageContext.request.contextPath}/EmployeeController?action=EDIT&id=${employee.id}">Edit</a>
						|	
						<a href = "${pageContext.request.contextPath}/EmployeeController?action=DELETE&id=${employee.id}">Delete</a>
						
						
						</th>
					<tr>
				</c:forEach>
		</table>

	</div>
</body>
</html>