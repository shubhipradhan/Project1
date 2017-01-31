<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Akira | About</title>

<!-- Bootstrap -->
<link href="static/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

</head>
<body>

	<!-- ############################# HEADER #################################### -->

	<%@include file="Header.jsp"%>

	<!-- ############################################################################## -->

	<div class="media">
		<div class="media-left">
			<img src="<s:url value="/static/img/akira.png" />"
				class="media-object" style="width: 60px">
		</div>
		<div class="media-body">
			<h2 class="media-heading">
				<strong>Akira</strong>
			</h2>
			<div class="container">
				<p>
					<strong>Akira ,</strong> is upcoming E-commerce website which
					basically deals with the following
				</p>
				<ul>
					<li><h4>Tops</h4></li>
					<li><h4>Necklace</h4></li>
					<li><h4>Solitaire</h4></li>
					<li><h4>Ring</h4></li>
				</ul>
			</div>
		</div>
	</div>
	
</body>
</html>