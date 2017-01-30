<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>SignUp</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/signup.css">
</head>
<body>
	<div class="header_obs">
		<p>
			<span id="obs">Online Business System</span>
		</p>
	</div>
		<h3 style="color: red">${loginError }</h3>
	
	<p>
		<span id="sign_up">Sign Up</span>
	</p>
	<div class="reg-form">
		<form action="newprofile" method="post" model="user">
			<label>Username</label> <br /> <input type="text" id="username"
				name="username" required="required"><br /> <label for="emali">Email</label> <br />
			<input type="email" id="email" name="email" required="required"><br /> <label
				>Password</label><br /> <input type="password"
				 name="password"><br /> <label>Phone
				no</label><br /> <input type="text" id="phoneno" name="phoneno"><br />
			<input type="submit" value="Create Account">
		</form>
		<div class="lower">
			<p>
				<span id="lower">Already have an account? <a
					href="${pageContext.request.contextPath}/login">LogIn</a></span>
			</p>
		</div>
	</div>
</body>
</html>