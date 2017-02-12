<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirmation Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

<script
	src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-route.js"></script>
	
<script src="<c:url value='/static/js/ordercontroller.js' />"></script>
</head>
<body>
<br>
<br>
<br>
  <!-- ######################################################################################  -->
    <h3>Order Summary List</h3>
<c:if test="${!empty order.cart.items}">
	<table class="table table-hover table-striped">
	<tr class="success">
		
		<th width="60">Product Name</th>
		<th width="60">Product Brand</th>
		<th width="60">Product Category</th>
		<th width="60">Product Description</th>
		<th width="60">Product Price</th>
		<th width="60">Item Quantity</th>
		<th width="60">Item Total</th>
		
		
	</tr>
	<c:forEach items="${order.cart.items}" var="product">
		<tr class="warning">
		
			<td>${product.product.productName}</td>
			<td>${product.product.brand}</td>
			<td>${product.product.category}</td>
			<td>${product.product.desc}</td>
			<td>${product.product.price}</td>
			<td>${product.qty}</td>
			<td>${product.qty *product.product.price}</td>
			
			

		</tr>
	</c:forEach>
	</table>
</c:if>
      <form:form class="form-horizontal">
      <input type="hidden" name="_flowExecutionKey">
      <br>
     
      <hr>
      <input type="submit" value="Submit Order" class="btn btn-large btn-success" name="_eventId_orderConfirmed" />
     </form:form>
    


</body>


