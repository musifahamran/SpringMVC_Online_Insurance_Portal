<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
<!-- Bootstrap nav bar -->
.dropdown-menu li a {
	padding: 5px 15px;
	font-weight: 300;
}
.dropdown-menu.columns-2 {
    min-width:500px;
}
.multi-column-dropdown {
	list-style: none;
  margin: 0px;
  padding: 0px;
}
.multi-column-dropdown li a {
	display: block;
	clear: both;
	line-height: 1.428571429;
	color: #333;
	white-space: normal;
}
.nav-item .nav-link{
color:white;
font-family: 'Lato', sans-serif;
	font-weight: 400;
	color:white;
	font-size: 20px;
	font-weight: bold;
}
.header-container{
	color:white;
	font-family: 'Lato', sans-serif;
	font-weight: 400;
	color:white;
	font-size: 20px;
	font-weight: bold;
	border-style:none;
	background-color:#b9305c;
}
.nav-link:hover{
	color:black;
}
.nav-item .nav-link:hover{
color:black;
}
.col-md-3 .btn{
color:white;
	font-family: 'Lato', sans-serif;
	font-weight: 400;
	color:white;
	font-size: 20px;
	font-weight: bold;
	border-style:none;
	background-color:#b9305c;
}
.col-md-3 .btn:hover{
color:black;
}
</style>
<div class="header-container fixed-top">
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-2">
      <a href="homePage" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-light text-decoration-none">
        <img src="resources/image/logo/logo_symbol.png" alt="logo" style="width:40px;height:35px;">
      	Prodexa
      </a>
      <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
        <li class="nav-item"><a class="nav-link" href="aboutus">About Us</a></li>
        <li class="nav-item dropdown" >
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Insurance
        </a>
	        <div class="dropdown-menu multi-column columns-2" aria-labelledby="navbarDropdownMenuLink">
	        <div class="row">
	         <div class="col-sm-6">
	        <h6 class="dropdown-header">Personal Insurance</h6>
	        <hr class="dropdown-divider">
	        	<ul class="multi-column-dropdown">
				<li><a class="dropdown-item" href="lifeInsurance">
				<img src="resources/image/logo/life.png" alt="life icon" class="img-fluid"  style="width:40px;height:35px;">
				Life Insurance</a></li>
	          	<li><a class="dropdown-item" href="healthInsurance">
	          	<img src="resources/image/logo/health.png" alt="health icon" class="img-fluid"  style="width:40px;height:35px;">
	          	Health Insurance</a></li>
	          	<li>
	          	<a class="dropdown-item" href="vehicleInsurance">
	          	<img src="resources/image/logo/vehicle.png" alt="vehicle icon" class="img-fluid"  style="width:40px;height:35px;">
	          	Vehicle Insurance</a></li>
	          	<li>
	          	<a class="dropdown-item" href="travelInsurance">
	          	<img src="resources/image/logo/travel.png" alt="travel icon" class="img-fluid"  style="width:40px;height:35px;">
	          	Travel Insurance</a></li>
				</ul>
	          </div>
	          <div class="col-sm-6">
		          <h6 class="dropdown-header">Corporate Insurance</h6>
		          <hr class="dropdown-divider">
		          <ul class="multi-column-dropdown">
				  <li><a class="dropdown-item" href="commercialInsurance">
				  <img src="resources/image/logo/corporate.png" alt="business icon" class="img-fluid"  style="width:40px;height:35px;">
				  Commercial Insurance</a></li>
		          <li><a  class="dropdown-item" href="schoolInsurance"> 
		          <img src="resources/image/logo/school.png" alt="school icon" class="img-fluid"  style="width:40px;height:35px;">
		          School Insurance</a></li>
		          </ul>
	        </div>
	        </div>
	        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Claims
        </a>
        <div class="dropdown-menu multi-column columns-2" aria-labelledby="navbarDropdownMenuLink">
        <div class="row">
         <div class="col-sm-6">
        	<ul class="multi-column-dropdown">
			<li><a class="dropdown-item" href="lifeClaim">
			<img src="resources/image/logo/life.png" alt="life icon" class="img-fluid"  style="width:40px;height:35px;">
			Life Insurance</a></li>
          	<li><a class="dropdown-item" href="healthClaim">
          	<img src="resources/image/logo/health.png" alt="health icon" class="img-fluid"  style="width:40px;height:35px;">
          	Health Insurance</a></li>
          	<li>
          	<a class="dropdown-item" href="vehicleClaim">
          	<img src="resources/image/logo/vehicle.png" alt="vehicle icon" class="img-fluid"  style="width:40px;height:35px;">
          	Vehicle Insurance</a></li>
          	<li>
          	<a class="dropdown-item" href="travelClaim">
          	<img src="resources/image/logo/travel.png" alt="travel icon" class="img-fluid"  style="width:40px;height:35px;">
          	Travel Insurance</a></li>
			</ul>
          </div>
          <div class="col-sm-6">
          <ul class="multi-column-dropdown">
		  <li><a class="dropdown-item" href="commercialClaim">
		  <img src="resources/image/logo/corporate.png" alt="business icon" class="img-fluid"  style="width:40px;height:35px;">
		  Commercial Insurance</a></li>
          <li><a  class="dropdown-item" href="schoolClaim"> 
          <img src="resources/image/logo/school.png" alt="school icon" class="img-fluid"  style="width:40px;height:35px;">
          School Insurance</a></li>
          </ul>
        </div>
        </div>
        </div>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="support">Contact</a>
      </li>
      </ul>
      <div class="col-md-3 text-end">
      <a href="loginform">
        <button type="button" class="btn" style="width:90px;height:40px;">Login</button></a>
        <a href="registerform">
        <button type="button" class="btn" style="width:90px;height:40px;">Register</button>
        </a>
      </div>
    </header>
  </div>
  </html>