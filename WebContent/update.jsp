<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<sql:update var="nb_line_modif" dataSource="jdbc/crud_exo">
  	UPDATE users
 	SET prenom = "${param.prenom}" , nom = "${param.nom}", motdepasse =  "${param.motdepasse}"
 	WHERE id = ?
  	<sql:param value="${param.id} " />
</sql:update>

<p>
	<c:out value="${ nb_line_modif}"></c:out>
	ligne modifiée dans la table
</p>

<a href="index.jsp">Back to index</a>




