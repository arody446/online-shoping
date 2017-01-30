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
				<div class="top">
					<form action="" method="post" modelAttribute="item">
						<table width="100%" border="0" cellspacing="0" cellpadding="5">
							<tr>
								<td><input type="search" name="search" /></td>
								<td><input type="submit" value=" SEARCH" /></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
			<div class="login-signup">
				Welcome :
				<%=session.getAttribute("activeUser")%>
				<a href="${pageContext.request.contextPath }/logout">Logout</a>
			</div>
			<!-- Header end-->
			<div class="main">
				<div class="nav">
					<p>Categories:</p>
					<ul>
						<li><a href="${pageContext.request.contextPath }/pmobiles">Mobile</a></li>
						<li><a href="${pageContext.request.contextPath }/pfurnitures">Furniture</a></li>
						<li><a href="${pageContext.request.contextPath }/pclothes">Cloth</a></li>
						<li><a href="${pageContext.request.contextPath }/pshoes">Shoes</a></li>
					</ul>
				</div>
				<div id="wrap">
					<h2>
						<span class="new">New Features:</span>
					</h2>
					<ul>
						<li id="1"><a
							href="${pageContext.request.contextPath}/pnt01"><img
								src="${pageContext.request.contextPath}/resources/images/clothes/Benetton.jpg"
								class="items" height="100" alt="" /> <br clear="all" /></a>
							<div>
								<span class="name"></span> Rs.<span class="price">800</span>
							</div></li>
						<li id="2"><a
							href="${pageContext.request.contextPath}/ptsh02"><img
								src="${pageContext.request.contextPath}/resources/images/clothes/bluetshirt.jpg"
								class="items" height="100" alt="" /> <br clear="all" /></a>
							<div>
								<span class="name"></span> Rs.<span class="price">750 </span>
							</div></li>
						<li id="3"><a
							href="${pageContext.request.contextPath}/ptsh03"><img
								src="${pageContext.request.contextPath}/resources/images/clothes/t.jpg"
								class="items" height="100" alt="" /> <br clear="all" /></a>
							<div>
								<span class="name"></span> Rs.<span class="price">800 </span>
							</div></li>
						<li id="4"><a
							href="${pageContext.request.contextPath}/ptsh04"><img
								src="${pageContext.request.contextPath}/resources/images/clothes/hi.jpg"
								class="items" height="100" alt="" /> <br clear="all" /></a>
							<div>
								<span class="name"></span> Rs.<span class="price">800</span>
							</div></li>
						<li id="5"><a
							href="#"><img
								src="${pageContext.request.contextPath}/resources/images/clothes/f.jpg"
								class="items" height="100" alt="" /> <br clear="all" /></a>
							<div>
								<span class="name"></span> Rs.<span class="price">9000 </span>
							</div></li>
						<li id="6"><a
							href="#"><img
								src="${pageContext.request.contextPath}/resources/images/clothes/a.jpg"
								class="items" height="100" alt="" /> <br clear="all" /></a>
							<div>
								<span class="name"></span> Rs.<span class="price">700 </span>
							</div></li>
						<li id="7"><a
							href="#"><img
								src="${pageContext.request.contextPath}/resources/images/clothes/c.jpg"
								class="items" height="100" alt="" /> <br clear="all" /></a>
							<div>
								<span class="name"></span> Rs.<span class="price">1500</span>
							</div></li>
						<li id="8"><a
							href="#"><img
								src="${pageContext.request.contextPath}/resources/images/clothes/b.jpg"
								class="items" height="100" alt="" /> <br clear="all" /></a>
							<div>
								<span class="name"></span> Rs.<span class="price">3000 </span>
							</div></li>
						<li id="9"><a
							href="#"><img
								src="${pageContext.request.contextPath}/resources/images/clothes/d.jpg"
								class="items" height="100" alt="" /> <br clear="all" /></a>
							<div>
								<span class="name"></span> Rs.<span class="price">2500 </span>
							</div></li>
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
