<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/admin.css">
</head>
<body>
<style>
body
{
	background:#CC6633;
}
</style>
<div class="a">
<table>
<form method="post" action="adminpanel" model="admin">
<tr>
<th>Username :</th>
<td><input type="text" name="username"></td>
</tr>
<tr>
<th>Password :</th>
<td><input type="password" name="password"></td>
<td><input type="submit" value="LogIn" name="sb"></td>
</tr>
</form>
</table>
</div>


</body>
</html>