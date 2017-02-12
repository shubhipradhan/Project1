<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ page session="false"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart </title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- Angular JS Script -->
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

<script
	src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-route.js"></script>
<script src="<c:url value='/static/js/ordercontroller.js' />"></script>
</head>

<!-- ####################################### HEADER #################################################### -->

<%@include file="Header.jsp"%>
<%-- Testing Angular : {{ 10 +5 }}
<br>
<hr>
<br>
cart Id : ${user.cart.cartId}
<br>
${cart.items}
${items.product.productName} --%>
<hr>
<br>

<!--   ////////////////////////////////////////////////////////////////////// -->
  <h3>Cart List</h3>
<c:if test="${!empty cart.items}">
	<table class="table table-hover table-striped">
	<tr class="success">
		
		<th width="60">Product Name</th>
		<th width="60">Product Brand</th>
		<th width="60">Product Category</th>
		<th width="60">Product Description</th>
		<th width="60">Product Price</th>
		<th width="60">Item Quantity</th>
		<th width="60">Item Total</th>
		<th width="60">Info</th>
		
	</tr>
	<c:forEach items="${cart.items}" var="product">
		<tr class="warning">
		
			<td>${product.product.productName}</td>
			<td>${product.product.brand}</td>
			<td>${product.product.category}</td>
			<td>${product.product.desc}</td>
			<td>${product.product.price}</td>
			<td>${product.qty}</td>
			<td>${product.qty *product.product.price}</td>
			<td><a class="btn btn-primary btn-success" href="<c:url value='/order/${cart.cartId}' />" >Checkout</a></td>

		</tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html>