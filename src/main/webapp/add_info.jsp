<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Info</title>

</head>
<body>

	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>

		<h1>Please fill your Info detail here</h1>
		<br>

		<!-- this is add form  -->

		 <form action="SaveInfoServlet" method="post">

			<div class="form-group">
				<label for="name">Student Name</label> 
				<input 
				name="name"
				required 
				type="text"
				class="form-control" 
				id="name" 
				aria-describedby="emailHelp"
				placeholder="Enter name here" />
				

			</div>
<br>

			<div class="form-group">
				<label for="address">Student Address</label>
				<textarea 
				name="address"
				required 
				id="address"
				placeholder="Enter your address here"				 
				class="form-control" 	
					></textarea>


			</div>

			<div class="container text-center">

				<button type="submit" class="btn btn-primary">Add</button>
			</div>

		</form> 

	</div>


</body>
</html>