
 <%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Akira | HOME </title>

<!-- Latest compiled and minified CSS -->
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

<!-- USER DEFINE CSS -->
<link rel="stlesheet" href="static/css/media.css">
<link rel="stylesheet" href="static/css/Navbar.css" />
<link rel="stylesheet" href="static/css/thumbnail.css" />

<!-- Custom Styling -->
<!-- Bootstrap -->
<link href="static/bootstrap/css/bootstrap.min.css" rel="stylesheet">



</head>
<body>

<!-- ####################################### HEADER #################################################### -->

<%@include file="Header.jsp"%>

<!-- ##################################### STARTING OF CAROUSEL ########################################## -->



<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			
		</ol>
	

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
		<div class="item active">
				<img src="<s:url value="static/img/slide3.jpg" />" alt="Slide2" id="tales"
					class="img-responsive">
			</div>
		
			<div class="item ">
			
			
				<img src="<s:url value="static/img/slide4.gif" />" alt="Slide1" id="tales"
					class="img-responsive">
			</div>

			<div class="item">
				<img src="<s:url value="static/img/slide1.jpg" />" alt="Slide2" id="tales"
					class="img-responsive">
			</div>
			
			
			<div class="item">
				<img src="<s:url value="static/img/slide2.jpg" />" alt="Slide3" id="tales"
					class="img-responsive">
			</div>

			
		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	
	<!-- #####################3 ADDING THUMBNAILS ###################### -->
	
	<div class="container">
<div class="row">
<div class="col-sm-3" >
     <a href="<c:url value='view/Solitaire' />"> <img src="<s:url value="/static/img/sol.jpg" />"  alt="Slide3" id="tales"
				class="img-responsive"></a>
    </div>
    <div class="col-sm-3">
      <a href="<c:url value='view/Necklace' />"> <img src="<s:url value="/static/img/pic1.jpg" />"  alt="Slide3" id="tales"
				class="img-responsive"></a>
    </div>
    <div class="col-sm-3">
      <a href="<c:url value='view/Ring' />"> <img src="<s:url value="/static/img/pic7.jpg" />"  alt="Slide3" id="tales"
				class="img-responsive"></a>
    </div>
    <div class="col-sm-3">
   <a href="<c:url value='view/Tops' />"> <img src="<s:url value="/static/img/pic8.jpg" />"  alt="Slide3" id="tales"
				class="img-responsive"></a> 
    </div>
</div>
	</div>

</body>
</html>
