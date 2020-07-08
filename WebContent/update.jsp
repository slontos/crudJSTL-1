<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%request.setCharacterEncoding("UTF-8"); %>
<c:catch var ="catchException">
<sql:update var="nb_line_modif" dataSource="jdbc/crud_exo">
  	UPDATE users
 	SET  lastname ='${param.lastname}',
 		 firstname ='${param.firstname}',
 		 password ='${param.password}'
 	WHERE id = ?::integer
  	<sql:param value="${param.id} " />
</sql:update>
<%response.sendRedirect("index.jsp");%>
</c:catch>
<c:if test = "${catchException != null}">
	<%response.sendRedirect("error.jsp");%>
</c:if>
<p>
	<c:out value="${nb_line_modif}"></c:out>
	Change commited
</p>






