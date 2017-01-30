<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LogIn</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/login.css">
</head>
<body>
	<div class="header_obs">
		<p>
			<span id="obs">Online Business System</span>
		</p>
	</div>

	<center><h3 style="color: red">${loginError }</h3></center>
	<p>
		<span id="login">LogIn</span>
	</p>
	<div class="u_login">
		<form action="profile" method="post" model="user"
			accept-charset="utf-8">

			<table>
				<tr>
					<th>Username</th>
					<td>:<input type="text" name="username" placeholder="username"
						required></td>
				</tr>
				<tr>
					<th>Password</th>
					<td>:<input type="password" name="password"
						placeholder="password" required></td>
					<td><input type="submit" value="LogIn"></td>
				</tr>
				</table>
		</form>

	</div>
</body>
</html>