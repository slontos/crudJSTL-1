<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="js/jquery-2.1.0.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add User Form</title>
</head>
<body>
<a href="index.jsp">View All Records</a><br/>
<form action="insert.jsp" method="post" id="form1">
<table class="table table-striped table-dark">
	<tr>
		<td>lastname:</td>
		<td><input type="text" name="lastname" value="" required/></td>
	</tr>
	
    <tr>
		<td>firstname:</td>
		<td><input type="text" name="firstname" value="" required/></td>
	</tr>
     
    <tr>
		<td>password:</td>
		<td><input type="text" name="password" value="" required/></td>
	</tr>
    
    <tr>
      	<td colspan="2">
     	<input type="submit" value="Add User"/>
    	</td>
    </tr>
</table>
</form>
</body>
</html>
