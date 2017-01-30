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
					<li><a href="#">Shop</a>
						<ul>
							<li><a href="${pageContext.request.contextPath }/mobiles">Mobile</a></li>
							<li><a href="${pageContext.request.contextPath }/furnitures">Furniture</a></li>
							<li><a href="${pageContext.request.contextPath }/clothes">Cloth</a></li>
							<li><a href="${pageContext.request.contextPath }/shoes">Shoes</a></li>
						</ul></li>
					<li><a href="${pageContext.request.contextPath }/">Home</a></li>
				</ul>
			</div>
			<div class="login-signup1">
				<ul>
					<li><a href="${pageContext.request.contextPath}/signup">Sign
							Up</a></li>
					<li><a href="${pageContext.request.contextPath}/login">LogIn</a></li>
				</ul>
			</div>
			<!-- Header end-->
			<div class="main">
				<div class="item-details">
					<div class="item-img">
						<img
							src="${pageContext.request.contextPath}/resources/images/mobiles/9.jpg">
					</div>

					<label style="color: blue; font-size: 36px">Boost Mobile</label><br />
					<label style="font-size: 24px">Waranties:   2 years</label> <label
						style="font-size: 24px">Description:</label>
					<p>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
						eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
						enim ad minim veniam, quis nostrud exercitation ullamco laboris
						nisi ut aliquip ex ea commodo consequat.</p> <br /> <br />
					<form>
						<input type="button" value="Add-to-Cart" name="addToCart"
							onclick="itemDetails()" style="color: blue" />
							<script type="text/javascript">
					function itemDetails(){
						alert("you have not register. Please register!!!!!!!!!!!!!")
						location.href = "${pageContext.request.contextPath }/signup/";
					}
						
					</script>
					</form>
				</div>
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
