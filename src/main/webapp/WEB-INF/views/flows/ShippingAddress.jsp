<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Address</title>
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
	
</head>

<body>
<%@include file="../Header.jsp"%>
<br>
<br>
<br>
<div class="container" id="div1">
  
  <p align="center"><strong>Please enter your Address carefully:</strong></p>
  <form:form modelAttribute="order.cart.user">
                    
    <div class="form-group">
      <form:label class="control-label col-sm-2" path="shippingAddress.address1" for="address1">Address: </form:label>
	  <div class="col-xs-10">
	  <form:input type="text" class="form-control" path="shippingAddress.address1" id="address1" placeholder="Address Line 1"></form:input>
	  </div>
    </div>
	
    <div class="form-group">
      <form:label class="control-label col-sm-2" path="shippingAddress.address2" for="address2">Address: </form:label>
      <div class="col-xs-10">
	  <form:input type="text" class="form-control" path="shippingAddress.address2" id="address2" placeholder="Address Line 2"></form:input>
	  </div>	
    </div>
	
	<div class="form-group">
      <form:label class="control-label col-sm-2" path="shippingAddress.city" for="city">City: </form:label>
      <div class="col-xs-10">
	  <form:input type="text" class="form-control" path="shippingAddress.city" id="city" placeholder="Enter your City" />
	  </div>
    </div>
	
    <div class="form-group">
      <form:label class="control-label col-sm-2" path="shippingAddress.pin" for="pin">Pin: </form:label>
	  <div class="col-xs-10">
	  <form:input type="text" class="form-control" path="shippingAddress.pin" id="pin"  placeholder="Enter Pin" />
	  </div>
    </div>
	<br>
	<br>
	<hr>
	<div class="form-group">
	<br><center><br>
	<input type="submit" class="btn btn-primary btn-success" value="Save Address" name="_eventId_shippingAddressChecked" />
        <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}"></center></div>
</form:form>
  
  
</div>

</body>


