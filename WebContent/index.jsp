

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="design.css" />
<title>View Users</title>
</head>
<body>

	<h1>Users List</h1>

	<c:catch var="exceptionThrown">
		<sql:query var="users" dataSource="jdbc/crud_exo">
         SELECT id,prenom, nom, motdepasse  FROM users
     </sql:query>
	</c:catch>
	<p><a href="adduserform.jsp">Add New User</a></p>
	<table border="1" style="width: 50%;">
		<tr>
			<th>Prenom</th>
			<th>Nom</th>
			<th>Mot de passe</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<c:forEach var="users" items="${users.rows}">
		<tr>
			<td>${users.prenom}</td>
			<td>${users.nom}</td>
			<td>${users.motdepasse}</td>

			<td><a
					href="editform.jsp?id=${users.id}&prenom=${users.prenom}&nom=${users.nom}&motdepasse=${users.motdepasse}">Edit</a></td>
			<td><a href="delete.jsp?id=${users.id}">Delete</a></td>
		</tr>
		</c:forEach>
	</table>
	<br />
	
	
</body>
</html>