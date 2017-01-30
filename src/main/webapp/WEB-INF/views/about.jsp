<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>OBS</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/index.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/font-awesome.min.css">
</head>
<body>
	<div class="wrapper">
		<div class="header">

			<div class="logo">
				<p>
					<a href="${pageContext.request.contextPath }/"> <span
						class="obs">OBS</span>
					</a>
				</p>
			</div>
			<div class="header-menu">
				<ul>
					<li><a href="${pageContext.request.contextPath }/about">About
							Us</a></li>
					<li><a href="${pageContext.request.contextPath }/shop">Shop</a></li>
					<li><a href="${pageContext.request.contextPath }/index">Home</a></li>
				</ul>
			</div>
			<div class="login-signup">
				<ul>
					<li><a href="${pageContext.request.contextPath}/signup">Sign
							Up</a></li>
					<li><a href="${pageContext.request.contextPath}/login">LogIn</a></li>
				</ul>
			</div>
			<!-- Header end-->
			<div class="main">

				<h1>
					<b>About Us</b>
				</h1>

			</div>
			<div class="footer">
				<p>
					<span class="footer-copy">Copyright © 2016 obs</span>
				</p>
			</div>
			<!-- Wrapper end -->
		</div>
	</div>
</body>
</html>
