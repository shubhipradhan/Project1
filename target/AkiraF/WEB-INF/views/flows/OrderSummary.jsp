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
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

<script
	src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-route.js"></script>
	
<script src="<c:url value='/static/js/ordercontroller.js' />"></script>
<br>
<br>
<br>
Angular testing : {{ 10 +5 }}
<div class="section">
<div class="container" id="div2" ng-app="addToCartApp" ng-controller="addToCartCtrl" ng-init="retrieveCart(${order.cart.cartId})">
<div class="row">
  <div class="col-md-6">
  <h1>Shipping Address:</h1>
  <ul class="lead list-group">
      <li class="list-group-item">Name: ${order.cart.user.username}</li>
      <li class="list-group-item">Address line 1: ${order.cart.user.shippingAddress.address1}</li>
      <li class="list-group-item">Address line 2: ${order.cart.user.shippingAddress.address2}</li>
      <li class="list-group-item">City: ${order.cart.user.shippingAddress.city}</li>
      <li class="list-group-item">Pin: ${order.cart.user.shippingAddress.pin}</li>
  </ul>
  </div>
  
  <div class="col-md-6">
  <br>
  <br>
  <br>
  <table class="tg">
    <thead>
      <tr>
        <th>Name</th>
        <th>Brand</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Item Total</th>
                
      </tr>
    </thead>
    <tbody>
      
	  <tr ng-repeat="item in cart.items">
        <td>{{item.product.productName}}</td>
        <td>{{item.product.brand}}</td>
        <td>{{item.product.price}}</td>
        <td>{{item.quantity}}</td>
        <td>{{item.itemTotal}}</td>
      </tr>
      
      <tr>
          <td></td>
          <td></td>
          <td>Total:</td>
          <td>{{GrandTotalOfItems()}}</td>
          
      </tr>
	  
	
	  
    </tbody>
  </table>
  <!-- ######################################################################################  -->
    <h3>Order Summary List</h3>
<c:if test="${!empty order}">
	<table class="table table-hover table-striped">
	<tr class="success">
		
		<th width="120">Product Name</th>
		<th width="120">Product Brand</th>
		<th width="120">Product Category</th>
		<th width="120">Product Description</th>
		<th width="120">Product Price</th>
		<th width="120">Item Quantity</th>
		<th width="60">Info</th>
		
	</tr>
	<c:forEach items="${order}" var="order">
		<tr class="warning">
		
			<td>${order.cart.cartId}</td>
			
			
			<td><a class="btn btn-primary btn-success" href="<c:url value='/order/${cart.cartId}' />" >Info</a></td>

		</tr>
	</c:forEach>
	</table>
</c:if>
      <form:form class="form-horizontal">
      <input type="hidden" name="_flowExecutionKey">
      
      <input type="submit" value="Submit Order" class="btn btn-default" name="_eventId_orderConfirmed" />
     </form:form>
    
  
  </div>


</div>
<br>
</div>
</div>

