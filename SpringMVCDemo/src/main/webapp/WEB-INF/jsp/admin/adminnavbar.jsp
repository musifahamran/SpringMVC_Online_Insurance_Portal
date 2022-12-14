<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
<style>
<!-- Bootstrap nav bar -->
.navbar-brand a:hover{
	background-color:#b9305c;
	color:black;
}
.navbar{
font-family: 'Lato', sans-serif;
	font-weight: 400;
	color:white;
	font-size: 20px;
	font-weight: bold;


}
.navbar li a:hover{
	color:black;
}
.dropdown-menu li a {
	padding: 5px 15px;
	font-weight: 300;
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
</style>
<nav class="navbar navbar-expand-lg navbar-dark fixed-top" style="background-color:#b9305c;">
  <a class="navbar-brand" href="<c:url value="/adminPortal"/>">
  <img src="<c:url value="/resources/image/logo/logo_symbol.png"/>" alt="logo" style="width:40px;height:35px;">
  Prodexa
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item dropdown" >
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          View Policy
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
        <div class="row">
         <div class="col-sm">
        	<ul class="multi-column-dropdown">
        	<li><a class="dropdown-item" href="<c:url value="/new-policy" />">Add New Policy</a></li>
			<li><a class="dropdown-item" href="<c:url value="/update-policy" />">
			Update Policy</a></li>
			</ul>
          </div>
        </div>
        </div>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="<c:url value="/view-customer" />">View Customers</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="<c:url value="/view-claim" />">View Customer Claims</a>
      </li>
    </ul>
    <ul class="navbar-nav ms-auto">
     <li class="nav-item dropdown-center">
     <a class="nav-link dropdown-toggle"  href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true">
          <i class="fa fa-user-circle fa-lg" aria-hidden="true"></i></a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" style="right:0%;">
        	<ul class="multi-column-dropdown">
        	<li><a class="dropdown-item" href="view-profile">
			View Profile</a></li>
			<li><a class="dropdown-item" href="<c:url value="/change-adminPwd" />">Change password</a></li>
			<hr>
			<li><a class="dropdown-item" href="<c:url value="/homePage" />">Logout</a></li>
			</ul>
        </div>
    </li>
    </ul>
  </div>
</nav>  
</html>