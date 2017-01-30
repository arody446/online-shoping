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
							<li><a
								href="${pageContext.request.contextPath }/mobiles">Mobile</a></li>
							<li><a
								href="${pageContext.request.contextPath }/furnitures">Furniture</a></li>
							<li><a
								href="${pageContext.request.contextPath }/clothes">Cloth</a></li>
							<li><a
								href="${pageContext.request.contextPath }/shoes">Shoes</a></li>
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
				<div class="nav">
					<p>Categories:</p>
					<ul>
						<li><a
							href="${pageContext.request.contextPath }/mobiles">Mobile</a></li>
						<li><a
							href="${pageContext.request.contextPath }/furnitures">Furniture</a></li>
						<li><a
							href="${pageContext.request.contextPath }/clothes">Cloth</a></li>
						<li><a
							href="${pageContext.request.contextPath }/shoes">Shoes</a></li>
					</ul>
				</div>
				<div id="wrap">
					<h2>
						<span class="new">New Features:</span>
					</h2>
					<ul>
						<li id="1"><a
							href="${pageContext.request.contextPath}/mobile11"><img
								src="${pageContext.request.contextPath}/resources/images/mobiles/mobile1.jpg"
								class="items" height="100" alt="" /> <br clear="all" /></a>
							<div>
								<span class="name">Blackberry</span>: Rs.<span class="price">8000</span>
							</div></li>
						<li id="2"><a
							href="${pageContext.request.contextPath}/samsung11"><img
								src="${pageContext.request.contextPath}/resources/images/mobiles/9.jpg"
								class="items" height="100" alt="" /> <br clear="all" /></a>
							<div>
								<span class="name">Samsung</span>: Rs.<span class="price">12000
								</span>
							</div></li>
						<li id="3"><a
							href="${pageContext.request.contextPath}/motorola11"><img
								src="${pageContext.request.contextPath}/resources/images/mobiles/Samsung-GALAXY-Note-II-T-Mobile (1).jpg"
								class="items" height="100" alt="" /> <br clear="all" /></a>
							<div>
								<span class="name">Motorola</span>: Rs.<span class="price">7000
								</span>
							</div></li>
						<li id="4"><a
							href="${pageContext.request.contextPath}/blackberry11"><img
								src="${pageContext.request.contextPath}/resources/images/mobiles/8.jpg"
								class="items" height="100" alt="" /> <br clear="all" /></a>
							<div>
								<span class="name">Blackberry</span>: Rs.<span class="price">8000</span>
							</div></li>
						<li id="5"><a
							href="#"><img
								src="${pageContext.request.contextPath}/resources/images/mobiles/5.jpg"
								class="items" height="100" alt="" /> <br clear="all" /></a>
							<div>
								<span class="name">Samsung</span>: Rs.<span class="price">12000
								</span>
							</div></li>
						<li id="6"><a
							href="#"><img
								src="${pageContext.request.contextPath}/resources/images/mobiles/6.jpg"
								class="items" height="100" alt="" /> <br clear="all" /></a>
							<div>
								<span class="name">Motorola</span>: Rs.<span class="price">7000
								</span>
							</div></li>
						<li id="7"><a
							href="#"><img
								src="${pageContext.request.contextPath}/resources/images/mobiles/7.jpg"
								class="items" height="100" alt="" /> <br clear="all" /></a>
							<div>
								<span class="name">Blackberry</span>: Rs.<span class="price">8000</span>
							</div></li>
						<li id="8"><a
							href="#"><img
								src="${pageContext.request.contextPath}/resources/images/mobiles/2.jpg"
								class="items" height="100" alt="" /> <br clear="all" /></a>
							<div>
								<span class="name">Samsung</span>: Rs.<span class="price">12000
								</span>
							</div></li>
						<li id="9"><a
							href="#"><img
								src="${pageContext.request.contextPath}/resources/images/mobiles/4.jpg"
								class="items" height="100" alt="" /> <br clear="all" /></a>
							<div>
								<span class="name">Motorola</span>: Rs.<span class="price">7000
								</span>
							</div></li>

					</ul>
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
