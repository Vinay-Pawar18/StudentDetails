<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All info: Student Info</title>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">All Info:</h1>


		<div class="row">
			<%
			Session s = FactoryProvider.getFactory().openSession();
			Query q = s.createQuery("from Student");
			List<Student> list = q.list();
			for (Student student : list) {
			%>
			<div class="card mt-3">
				<img class="card-img-top m-4 mx-auto" style="max-width: 50px;"
					src="img/graduated.png" alt="Card image cap">
				<div class="card-body px-5">
					<h3 class="card-title">Name: <%=student.getName()%></h3>
					<h4 class="card-title">ID: <%=student.getId()%></h4>
					<p class="card-text">Address_Date: <%=student.getAddress()%>
					</p>
					<p>
						<b class="text-primary">Addmission: <%=student.getAddedDate()%></b>
					</p>
					
					<div class="container text-center mt-2">
						<a href="DeleteServlet?student_id=<%=student.getId()%>"
							class="btn btn-danger">Delete</a> <a
							href="edit.jsp?student_id=<%=student.getId()%>"
							class="btn btn-primary">Update</a>
					</div>
					<p>
						<b class="text-primary">_______________________________________________________</b>
					</p>
				</div>

				<%
				}

				s.close();
				%>

			</div>
</body>
</html>