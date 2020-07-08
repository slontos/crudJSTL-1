<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%request.setCharacterEncoding("UTF-8"); %>
<c:catch var ="catchException">
	<sql:update var="nb_line_insert" dataSource="jdbc/crud_exo">
	INSERT INTO users (lastname, firstname, password )
	VALUES ('${ param.lastname }','${ param.firstname }', '${ param.password }')
	</sql:update>
	<%response.sendRedirect("index.jsp");%> 
</c:catch>
<c:if test = "${catchException != null}">
	<%response.sendRedirect("error.jsp");%>
</c:if>

<p>
	<c:out value="${ nb_line_insert}"></c:out>
	Add Done
</p>
