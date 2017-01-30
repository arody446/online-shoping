<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Users</title>
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
			<a class="link" href="${pageContext.request.contextPath }/adminlogin">Logout</a><br>

			<div class="Users">
				<label id=userdetails>User Details:</label>
				<table border="1"
					style="border-collapse: collapse; collapse; width: 70%; cellspacing: 0px; cellpadding: 5px; margin-left: 150px">
					<thead>
						<tr>
							<th>SN</th>
							<th>Username</th>
							<th>Email</th>
							<th>Password</th>
							<th>Phoneno</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="row" items="${userList}">
							<tr>
								<td>${row.id}</td>
								<td>${row.username}</td>
								<td>${row.email}</td>
								<td>${row.password}</td>

								<td>${row.phoneno}</td>
							</tr>
						</c:forEach>
					</tbody>

				</table>
			</div>
		</div>
	</div>
</body>
</html>
