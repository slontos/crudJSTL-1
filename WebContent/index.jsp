<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<title>View Users</title>
<script type="text/javascript" src="js/jquery-2.1.0.min.js"></script>
</head>
<body style="backgroung-color: #EAF6F6;">
	<h1>Users List</h1>
	
		<sql:query var="users" dataSource="jdbc/crud_exo">
         SELECT id,firstname, lastname, password  FROM users
     </sql:query>
	<p><a href="adduserform.jsp">Add New User</a></p>
	<table border="1" style="width: 50%;">
	<table class="table table-striped">
		<tr>
			<th>id</th>
			<th>firstname</th>
			<th>lastname</th>
			<th>password</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<c:forEach var="users" items="${users.rows}">
		<tr>
			<td>${users.id}</td>
			<td>${users.firstname}</td>
			<td>${users.lastname}</td>
			<td>${users.password}</td>

			<td><a
					href="editform.jsp?id=${users.id}&firstname=${users.firstname}&lastname=${users.lastname}&Password=${users.Password}">Edit</a></td>
			<td><a href="delete.jsp?id=${users.id}">Delete</a></td>
		</tr>
		</c:forEach>
	</table>
	<br />
	
	
</body>
</html>