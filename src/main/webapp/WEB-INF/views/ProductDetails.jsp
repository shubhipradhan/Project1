<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
 <%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ProductDetails</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- FontAwesome CDN -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">



<!-- Custom Styling -->
<!-- Bootstrap -->
<link href="static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<!-- ############################# HEADER #################################### -->

	<%@include file="Header.jsp"%>

	<!-- ############################################################################## -->
	
				<br>
				<br>
<h3>Products List</h3>
<c:if test="${!empty listProducts}">
	<table class="table table-hover table-striped">
	<tr class="success">
		<th width="80">Product ID</th>
		<th width="120">Product Name</th>
		<th width="120">Product Brand</th>
		<th width="120">Product Category</th>
		<th width="120">Product Description</th>
		<th width="120">Product Price</th>
		<th width="60">Info</th>
		
	</tr>
	<c:forEach items="${listProducts}" var="product">
		<tr class="warning">
			<td>${product.productId}</td>
			<td>${product.productName}</td>
			<td>${product.brand}</td>
			<td>${product.category}</td>
			<td>${product.desc}</td>
			<td>${product.price}</td>
			
			<td><a class="btn btn-primary" href="<c:url value='/view/ProductInfo/${product.productId}' />" >Info</a></td>

		</tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html>