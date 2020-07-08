<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<sql:update var="nb_line_delete" dataSource="jdbc/crud_exo">
DELETE FROM users
WHERE id = ?::integer
<sql:param value="${param.id} "/>
</sql:update>

<p>
	<c:out value="${ nb_line_delete}"></c:out>
	Delete Done
</p>
<%response.sendRedirect("index.jsp");%>

