<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<html>
<title>Spring MVC Demo App</title>
<link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<style>
.container-fluid{
width:100%;
overflow:hidden;
}
.col-xs-12{
background-color:black;
}
.container2, .border{
border-style: double;
border-width: 10px;
border-color:white;
}
h1{
color:white;
padding:190px 30px;
}
.btn{
	height: 150px;
	width:250px;

}
body, html, .container-fluid {
     height: 100%;
}
</style>
<section>
<div class="container-fluid  g-0">
  	<div class="row g-0" style="height:100vh">
	    <div class="col-xs-12 col-sm-4 col-md-2 ">
	    <div class="container " style="align:center; padding:100px 10px;">
	      <h1 class="half-title border-info">Prodexa Insurance Agency</h1>
	      </div>
	    </div>
	    <div class="col-xs-8 col-md-10 ">
	      <jsp:include page="/WEB-INF/jsp/carousel.jsp"/>
	    </div>
	</div>
	</div>
	</section>
	<section>
	<div class="container-fluid  g-0" style="background-color:#D9D7F1">
		<br><br>
  	<div class="row">
 	<h2 class="half-title border-info" align="center">Protect yourself</h2>
 	</div>
 	<br>
 	<div class="row">
 	<div class="col-1">
 	</div>
 	<div class="col">
 		<a class="btn btn-light" href="lifeInsurance" role="button" style="padding:45px;">
 		<span><img src="resources/image/logo/life.png" alt="life icon" class="img-fluid"  style="width:40px;height:35px;"></span><br>
 		Life Insurance</a>
 	</div>
  	<div class="col ">
 		<a class="btn btn-light" href="healthInsurance" role="button" style="padding:45px;">
 		<span><img src="resources/image/logo/health.png" alt="health icon" class="img-fluid"  style="width:40px;height:35px;"></span><br>
 		Health Insurance</a>
 	</div>
 	<div class="col">
 			<a class="btn btn-light" href="vehicleInsurance" role="button" style="padding:45px;">
 		<span><img src="resources/image/logo/vehicle.png" alt="vehicle icon" class="img-fluid"  style="width:40px;height:35px;"></span><br>
 		Vehicle Insurance</a>
 	</div>
  	<div class="col ">
 			<a class="btn btn-light" href="travelInsurance" role="button" style="padding:45px;">
 		<span><img src="resources/image/logo/travel.png" alt="travel icon" class="img-fluid"  style="width:40px;height:35px;"></span><br>
 		Travel Insurance</a>
 	</div>
 	</div>
 	<br>
 	<div class="row">
 	<div class="col-1">
 	</div>
 	<div class="col">
 			<a class="btn btn-light" href="schoolInsurance" role="button" style="padding:45px;">
 		<span><img src="resources/image/logo/school.png" alt="school icon" class="img-fluid"  style="width:40px;height:35px;"></span><br>
 		School Insurance</a>
 	</div>
  	<div class="col">
 			<a class="btn btn-light" href="commercialInsurance" role="button" style="padding:45px;">
 		<span><img src="resources/image/logo/corporate.png" alt="business icon" class="img-fluid"  style="width:40px;height:35px;"></span><br>
 		Commercial Insurance</a>
 	</div>
 	<div class="col"></div>
 	<div class="col"></div>
 	</div>
 	<br><br><br><br>
	</div>
</section>
</html>
