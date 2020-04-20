<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Form</title>
</head>
<body>
	<h1>Edit Form</h1>

	<c:catch var="exceptionThrown">
		<sql:query var="users" dataSource="jdbc/crud_exo">
         SELECT prenom, nom, motdepasse  FROM users
         WHERE id = ?
        <sql:param value="${param.id} " />
		</sql:query>
	</c:catch>

	<form action="update.jsp">
		<table>
			<tr>

				<td><input type="hidden" name="id" value="${ param.id }" /></td>
			</tr>
			<tr>
				<td>Nom:</td>
				<td><input type="text" name="nom" value="${ param.nom }" /></td>
			</tr>

			<tr>
				<td>Prenom:</td>
				<td><input type="text" name="prenom" value="${param.prenom}" /></td>
			</tr>

			<tr>
				<td>Mot de passe:</td>
				<td><input type="text" name="motdepasse"
					value="${ param.motdepasse }" /></td>
			</tr>

			<tr>
				<td colspan="2"><input type="submit"
					value="Enregistrer modification" /></td>
			</tr>
		</table>
	</form>
</body>
</html>