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
  <table class="tg">
    <thead>
      <tr>
        <th>Name</th>
        <th>Brand</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Item Total</th>
        
        <th></th>
      </tr>
    </thead>
    <tbody>
      
	  <tr ng-repeat="item in cart.items">
        <td>{{item.product.productName}}</td>
        <td>{{item.product.brand}}</td>
        <td>{{item.product.price}}</td>
        <td>{{item.quantity}}</td>
        <td>{{item.itemTotal}}</td>
        
        <td><a href="#" ng-click="removeItemFromCart(item.itemId)"><i class="fa fa-times" aria-hidden="true"></i></a></td>
      </tr>
      
      <tr>
          <td></td>
          <td></td>
          <td>Total:</td>
          <td>{{GrandTotalOfItems()}}</td>
          <td><a href="<c:url value='/order/${person.cart.cartId}'/>" class="btn btn-success">CheckOut</a></td>
      </tr>
	  
	
	  
    </tbody>
  </table>
</body>
</html>