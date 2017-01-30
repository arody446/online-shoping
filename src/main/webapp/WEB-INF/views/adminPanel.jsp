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
	<div class="main">
		<div class="header">
			<p>ADMIN PANEL</p>
		</div>

		<div class="Content">
			<a class="link" href="${pageContext.request.contextPath }/order">Orders</a><br>
			<a class="link" href="${pageContext.request.contextPath }/users">User</a><br>
			<a class="link" href="${pageContext.request.contextPath }/adminlogin">Logout</a><br>
		
		</div>
	</div>

</body>
</html>