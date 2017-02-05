<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page</title>

<!-- ################################ TAGS ################################################# -->
<link href="<c:url value='/static/css/bootstrap.css' />"
	rel="stylesheet"></link>
<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
<link rel="stylesheet" type="text/css"
	href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />

<!-- ################################ Latest compiled and minified CSS #################################### -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- ############################### jQuery library ############################################### -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- ############################## Latest compiled JavaScript ################################-->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

<!-- ################################ FontAwesome CDN #################################### -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<!--############################## USER DEFINE CSS ########################################### -->


<!-- ########################################## Custom Styling #################################-->

<!-- ################################ Bootstrap ##########################################333 -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/style.css" />



</head>

<body>
<%@include file="Header.jsp" %>

<div class="container"><h1>Akira</h1></div>

<div class="col-xs-6" > 

<img src="<s:url value="/static/img/akira.png" />" alt="Akira_image" class="img-responsive">

</div>
	<div class="col-sx-6">
		<div>
			<div  class="col-sx-6">
				<div class="login-form">
					<c:url var="loginUrl" value="/login" />
					
					<form action="${loginUrl}" method="post" class="form-horizontal">
						<c:if test="${param.error != null}">
							<div class="alert alert-danger">
								<p>Invalid username and password.</p>
							</div>
						</c:if>
						<c:if test="${param.logout != null}">
							<div class="alert alert-success">
								<p>You have been logged out successfully.</p>
							</div>
						</c:if>
						<div class="input-group input-sm">
							<label>USERNAME :</label><label class="input-group-addon"
								for="username"><i class="fa fa-user" aria-hidden="true"></i></label> <input
								type="text" class="form-control" id="username" name="ssoId"
								placeholder="Enter Username" required>
						</div>
						<div class="input-group input-sm">
							<label>PASSWORD:</label><label class="input-group-addon"
								for="password"><i class="fa fa-key" aria-hidden="true"></i></label> <input
								type="password" class="form-control" id="password"
								name="password" placeholder="Enter Password" required>
						</div>
						

						<div class="form-actions">
							<input type="submit"
								class="btn btn-lg btn-primary btn-default" value="Log in">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>