
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<sql:update var="nb_line_insert" dataSource="jdbc/crud_exo">
INSERT INTO users (nom, prenom, MOTDEPASSE )
VALUES ( '${ param.nom }','${ param.prenom }', '${ param.motdepasse }')

</sql:update>
<p>
	<c:out value="${ nb_line_insert}"></c:out>
	ligne insérée dans la table
</p>
<a href="index.jsp">back to index</a>