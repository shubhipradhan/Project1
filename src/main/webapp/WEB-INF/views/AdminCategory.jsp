<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false"%>
<%@ page isELIgnored="false" %>

<html>

<head>
 <script src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.5.2/angular.min.js"></script>
<style>body{font-family:"Arial";}</style>
  
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<%@include file="Header.jsp" %>
<!-- DISPLAYING THE LIST of web page -->
<%-- ${productList} --%>
<br>
<br>
<center><h2>List of Products </h2></center>
<br>
<br>

<script>

var prod=${productList};
angular.module("productApp",[])

.controller("productController",function($scope){
	
	$scope.prodData=prod;
	
	$scope.sort=function(keyname){
		$scope.sortKey=keyname;
		$scope.reverse=!$scope.reverse;
	}
	
});

</script>
<div class="container">
<div ng-app="productApp" ng-controller="productController"> 

 <table class="table table-hover" >
    <thead>
      <tr class="info">
        <th ng-click="sort('productName')">Product ID</th>
        <th ng-click="sort('brand')">Product Name</th>
        <th ng-click="sort('category')">Category</th>
        <th ng-click="sort('desc')">Description</th>
        <th ng-click="sort('price')">Price</th>
        
        <th>More Info</th>
      </tr>
    </thead>
    <tbody>
      
	  <tr ng-repeat="product in prodData" class="success">
        <td>{{product.productId}}</td>
        <td>{{product.productName}}</td>
         <td>{{product.category}}</td>
          <td>{{product.desc}}</td>
        <td>{{product.price}}</td>
       
<%--         <td><a class="btn btn-primary" href="<c:url value='/productInfo/{{product.productId}}' />">Info</a></td>
 --%>  
<%--  <td><a class="btn btn-primary" href="<c:url value='/AddtoCart/{{product.productId}}' />">Cart</a></td> --%>
  <td><a class="btn btn-primary" href="<c:url value='/productInfo/{{product.productId}}' />">Info</a></td>
      </tr>
	  
	
	  
    </tbody>
  </table>
  </div>



</body>
</html>
