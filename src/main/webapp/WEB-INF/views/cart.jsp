
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>cart</title>
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
					<li><a href="${pageContext.request.contextPath }/shop">Shop</a></li>
					<li><a href="${pageContext.request.contextPath }/profile">Home</a></li>
				</ul>
				<div class="top">
					<form>
						<table width="100%" border="0" cellspacing="0" cellpadding="5">
							<tr>
								<td><input type="text" name="search" /></td>
								<td><input type="submit" value=" SEARCH" /></td>
							</tr>

						</table>
					</form>
				</div>
			</div>
			<div class="login-signup">
				Welcome :
				<%=session.getAttribute("activeUser")%>
				<a href="${pageContext.request.contextPath }/login">Logout</a>
			</div>
			<!-- Header end-->
			<div class="main">
				<h2>My Shopping Cart:</h2>
				<hr>
				<form>
					<table border="1"
						style="border-collapse: collapse; collapse; width: 70%; cellspacing: 0px; cellpadding: 5px; margin-left: 150px">
						<thead>
							<tr>
								<th></th>
								<th>Item_id</th>
								<th>Item_name</th>
								<th>Price</th>
								<th>Quantity</th>
								<th>Total</th>
							</tr>
						</thead>
						<tbody>
							<c:set var="total" value="${0 }" />
							<c:forEach var="row" items="${cartList}">
								<tr>
									<td><input type="button" value="Edit" style="color: green"
										onclick="editItem(${row.cartid})"> <input
										type="button" onclick="deleteItem(${row.cartid})"
										value="Delete" style="color: red" /></td>
									<td>${row.itemid}</td>
									<td>${row.itemname}</td>
									<td>${row.price}</td>
									<td>${row.qty}</td>
									<td>${row.totalPrice}</td>
									<c:set var="total" value="${total + row.totalPrice }" />
								</tr>
							</c:forEach>
						</tbody>
						<tr id="grandTotal">
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th>Grand Total:</th>

							<th>Rs.${total}</th>
						</tr>

					</table>
					<script type="text/javascript">
					function editItem(cartid){
						location.href = "${pageContext.request.contextPath }/mycart/" + cartid +"/edit";
					}
						function deleteItem(cartid) {
							
							var r = confirm("Are you sure you want to delete this record?");
							if (r == true) {
								location.href = "${pageContext.request.contextPath }/mycart/"
										+ cartid + "/delete";
							}
						}
					</script>
				</form>
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
