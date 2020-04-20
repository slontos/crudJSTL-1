<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<sql:update var="nb_line_delete" dataSource="jdbc/crud_exo">
DELETE FROM users
WHERE id = ?
<sql:param value="${param.id} " />
</sql:update>

<p>
	<c:out value="${ nb_line_delete}"></c:out>
	ligne supprimée dans la table
</p>
<a href="index.jsp">back to index</a>
