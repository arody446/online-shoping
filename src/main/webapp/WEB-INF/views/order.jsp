<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/admin.css">
</head>
<body>
	<div class="main">
		<div class="header">
			<p>ADMIN PANEL</p>
		</div>

		<div class="Content">
			<a class="link" href="${pageContext.request.contextPath }/order">Orders</a><br>
			<a class="link" href="${pageContext.request.contextPath }/users">User</a><br>
			<a class="link" href="${pageContext.request.contextPath }/adminlogin">Logout</a><br>


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
						<c:forEach var="row" items="${cartList}">
							<tr>
								<td><input type="button" value="Deliver" style="color: blue"
										onclick="deliverItem(${row.cartid})"></td>
								<td>${row.itemid}</td>
								<td>${row.itemname}</td>
								<td>${row.price}</td>
								<td>${row.qty}</td>
								<td>${row.totalPrice}</td>
						
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<script type="text/javascript">
					function deliverItem(cartid){
						location.href = "${pageContext.request.contextPath }/order/" + cartid +"/deliver";
					}
					</script>
			</form>
		</div>
	</div>
</body>
</html>