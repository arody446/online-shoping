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
				<h1 style="color: '#0c02ce'">${message}</h1>
				<div class="item-details">
					<div class="item-img">
						<img
							src="${pageContext.request.contextPath}/resources/images/shoes/s.jpg">
					</div>
					<form action="thanku" method="post" model="cart">

						<div class="item-name">psh03</div>
						<div class="item-price">RS. 1700</div>
						<div class="item-qty">
							QTY: <select name=qty><option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option></select>

						</div>
						<input type="hidden" name="itemid" value="15"> 
						<input type="hidden" name="itemname" value="psh03">
					    <input type="hidden" name="price" value="1700">					    
						<div class="item-add-cart">
							<input type="submit" value="Add to Cart" name="addCart">
						</div>
					</form>
				</div>
			</div>
			<div class="footer">
				<p>
					<i class="fa fa-copy-right"></i>
				</p>
			</div>
			<!-- Wrapper end -->
		</div>
	</div>
</body>
</html>
