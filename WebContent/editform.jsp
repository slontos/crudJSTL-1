<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%request.setCharacterEncoding("UTF-8"); %>
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
         SELECT lastname, firstname, password  FROM users
         WHERE id = ?
        <sql:param value="${param.id}"/>
		</sql:query>
	</c:catch>
	<form action="update.jsp" method="post">
		<table>
			<tr>

				<td><input type="hidden" name="id" value="${param.id}" /></td>
			</tr>
			<tr>
				<td>lastname:</td>
				<td><input type="text" name="lastname" value="${param.lastname}" /></td>
			</tr>

			<tr>
				<td>firstname:</td>
				<td><input type="text" name="firstname" value="${param.firstname}" /></td>
			</tr>

			<tr>
				<td>password</td>
				<td><input type="text" name="password"value="${param.password}" /></td>
			</tr>

			<tr>
				<td colspan="2"><input type="submit"
					value="Change commited" /></td>
			</tr>
		</table>
	</form>
</body>
</html>