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
  <form action="" method="post" modelAttribute="item"><table width="100%" border="0" cellspacing="0" cellpadding="5">
  <tr>
    <td><input type="search" name="search" /> </td>
    <td> <input type="submit" value=" SEARCH" /> </td>
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
			<div class="nav"><p>Categories:</p>
					<ul>
						<li><a href="${pageContext.request.contextPath }/pmobiles">Mobile</a></li>
						<li><a href="${pageContext.request.contextPath }/pfurnitures">Furniture</a></li>
						<li><a href="${pageContext.request.contextPath }/pclothes">Cloth</a></li>
						<li><a href="${pageContext.request.contextPath }/pshoes">Shoes</a></li>
					</ul></div>
						<div id="wrap">
					<h2>
						<span class="new">New Features:</span>
					</h2>
					<ul>
						<li id="1"><a
							href="${pageContext.request.contextPath}/mobile1"><img
								src="${pageContext.request.contextPath}/resources/images/mobiles/mobile1.jpg"
								class="items" height="100" alt="" /> <br clear="all" /></a>
								<div>
									<span class="name">Blackberry</span>: Rs.<span class="price">8000</span>
								</div></li>
						<li id="2"><a
							href="${pageContext.request.contextPath}/htc"><img
							src="${pageContext.request.contextPath}/resources/images/mobiles/9.jpg"
							class="items" height="100" alt="" /> <br clear="all" /></a>
							<div>
								<span class="name">Samsung</span>: Rs.<span class="price">12000
								</span>
							</div></li>
						<li id="3"><a
							href="${pageContext.request.contextPath}/motorola"><img
							src="${pageContext.request.contextPath}/resources/images/mobiles/Samsung-GALAXY-Note-II-T-Mobile (1).jpg"
							class="items" height="100" alt="" /> <br clear="all" /></a>
							<div>
								<span class="name">Motorola</span>: Rs.<span class="price">7000
								</span>
							</div></li>
						<li id="4"><a
							href="${pageContext.request.contextPath}/blackberry"><img
							src="${pageContext.request.contextPath}/resources/images/mobiles/8.jpg"
							class="items" height="100" alt="" /> <br clear="all" /></a>
							<div>
								<span class="name">Blackberry</span>: Rs.<span class="price">8000</span>
							</div></li>
						<li id="5"><a
							href="${pageContext.request.contextPath}/5"><img
							src="${pageContext.request.contextPath}/resources/images/mobiles/5.jpg"
							class="items" height="100" alt="" /> <br clear="all" /></a>
							<div>
								<span class="name">Samsung</span>: Rs.<span class="price">12000
								</span>
							</div></li>
						<li id="6"><a
							href="${pageContext.request.contextPath}/6"><img
							src="${pageContext.request.contextPath}/resources/images/mobiles/6.jpg"
							class="items" height="100" alt="" /> <br clear="all" /></a>
							<div>
								<span class="name">Motorola</span>: Rs.<span class="price">7000
								</span>
							</div></li>
						<li id="7"><a
							href="${pageContext.request.contextPath}/7"><img
							src="${pageContext.request.contextPath}/resources/images/mobiles/7.jpg"
							class="items" height="100" alt="" /> <br clear="all" /></a>
							<div>
								<span class="name">Blackberry</span>: Rs.<span class="price">8000</span>
							</div></li>
						<li id="8"><a
							href="${pageContext.request.contextPath}/2"><img
							src="${pageContext.request.contextPath}/resources/images/mobiles/2.jpg"
							class="items" height="100" alt="" /> <br clear="all" /></a>
							<div>
								<span class="name">Samsung</span>: Rs.<span class="price">12000
								</span>
							</div></li>
						<li id="9"><a
							href="${pageContext.request.contextPath}/4"><img
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
