<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
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
					<span class="obs">OBS</span>
				</p>
			</div>
			<div class="header-menu">
				<ul>
					<li><a href="${pageContext.request.contextPath }/mycart">Cart</a></li>
					<li><a href="${pageContext.request.contextPath }/shop">Shop</a>
						<ul>
							<li><a href="#">Mobile</a></li>
							<li><a href="#">Furniture</a></li>
							<li><a href="#">Cloth</a></li>
							<li><a href="#">Shoes</a></li>
						</ul></li>
					<li><a href="${pageContext.request.contextPath }/profile">Home</a></li>
				</ul>
			</div>
			<div class="login-signup">
				Welcome :
				<%=session.getAttribute("activeUser")%>
				<a href="${pageContext.request.contextPath }/logout">Logout</a>
			</div>
			<!-- Header end-->
			<div class="main">
				<marquee><h1 style="color: '#0c02ce'">Thank you!! You have successfully added item to your cart.....</h1></marquee>

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
