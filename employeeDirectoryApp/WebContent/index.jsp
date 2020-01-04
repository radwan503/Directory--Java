
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

<%
String email=(String)request.getAttribute("email");
if(email !=null){
	response.sendRedirect("EmployeeController?action=LIST");
	 
}

String status = request.getParameter("status");
if(status !=null){
	if(status.equals("false")){
		out.print("Bad Credentials");
	}else if(status.equals("error")){
		out.print("Some Error");
	}
}

%>

	<div class="container">
	<div class="card">
		<h1>Login</h1>
		<div class="card-body">
			<form action="loginprocess" method="post">
			<div class="form-group">
			<input class="form-control" type="text" name="email" placeholder="Enter Email"  />
			</div>
			<div class="form-group">
			<input class="form-control" type="password" name="password" placeholder="Enter Password" />
			</div>
			</form>
		</div>

		<div class="card-footer">
			<input class="btn btn-primary" type="submit" value="login" />
		</div>
	</div>
	
	
	</div>
</body>
</html>