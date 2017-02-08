<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- Angular JS Script -->
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

<script
	src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-route.js"></script>
<script src="<c:url value='/static/js/ordercontroller.js' />"></script>
</head>
<body ng-app="addToCartApp" ng-controller="addToCartCtrl" >
<table class="table table-hover" >
    <thead>
      <tr class="info">
     
        <th>Product Name</th>
        <th>Category</th>
        <th>Description</th>
        <th >Price</th>
        <th >Quantity</th>
        <th >Item Total</th>
      
      </tr>
    </thead>
    <tbody>
      
	  <tr ng-repeat="item in cart.items">
      
        <td>{{item.product.productName}}</td>
         <td>{{item.product.category}}</td>
          <td>{{item.product.desc}}</td>
        <td>{{item.product.price}}</td>
        <td>{{item.quantity}}</td>
        <td>{{item.product.price*item.quantity}}</td>
       
      <td><a href="order">Order</a></td>
  
      </tr>
	  
	
	  
    </tbody>
  </table>
</body>
</html>