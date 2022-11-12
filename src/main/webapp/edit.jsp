<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.helper.*,org.hibernate.*,com.entities.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<h1>Edit your Info</h1>
		<br>

		<%
			int studentId = Integer.parseInt(request.getParameter("student_id").trim());
		Session s = FactoryProvider.getFactory().openSession();
		Student student=(Student) s.get(Student.class, studentId);
		%>


		<form action="UpdateServlet" method="post">

			<input value="<%=student.getId()%>" name="studentId" type="hidden" />

			<div class="form-group">
				<label for="name">Info name</label> <input name="name" required
					type="text" class="form-control" id="name"
					aria-describedby="emailHelp" placeholder="Enter name here"
					value="<%=student.getName()%>" />

			</div>


			<div class="form-group">
				<label for="address">Info Address</label>
				<textarea name="address" required id="address"
					placeholder="Enter your address here" class="form-control"
					style="height: 300px;"><%=student.getAddress()%>
					</textarea>


			</div>

			<div class="container text-center">

				<button type="submit" class="btn btn-success">Save your
					info</button>
			</div>

		</form>


	</div>
</body>
</html>