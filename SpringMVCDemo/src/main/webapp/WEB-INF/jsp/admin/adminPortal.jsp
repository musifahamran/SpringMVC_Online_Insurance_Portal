<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
<style>
html {
  height:100%;
}

body {
  margin:0;
  background: rgb(234,247,255);
	background: linear-gradient(331deg, rgba(234,247,255,1) 40%, rgba(237,255,228,1) 59%);
}

</style>
</head>
<body>
<jsp:include page="adminnavbar.jsp"></jsp:include>
<br><br><h3><center>Welcome back ${user.username}</center></h3><br><br>
<div class="container 100vh">
<div class="row">
<div class="col-1"></div>
	<div class="col">
		<div class="card" style="width: 18rem;">
		  <img src="resources/image/social-event.png" class="card-img-top" alt="event">
		  <div class="card-body">
		    <h5 class="card-title">Prodexa Annual Event</h5>
		    <p class="card-text">Come and participate in our company's annual event!</p>
		    <a href="#" class="btn btn-primary">Read more</a>
		  </div>
		</div>
	</div>
<div class="col">
		<div class="card" style="width: 18rem;">
		  <img src="resources/image/announcement.png" class="card-img-top" alt="annoucement" style="height:200px">
		  <div class="card-body">
		    <h5 class="card-title">Announcements</h5>
		    <p class="card-text">Find out the latest happenings in the company</p>
		    <a href="#" class="btn btn-primary">Read more</a>
		  </div>
		</div>
	</div>
<div class="col">
		<div class="card" style="width: 18rem;">
		  <img src="resources/image/Health-checkup.jpg" class="card-img-top" alt="health check" style="height:170px">
		  <div class="card-body">
		    <h5 class="card-title">Check yourself</h5>
		    <p class="card-text">Even with loosening of COVID-19 restrictions, remember to check your temperature!</p>
		    <a href="logout" class="btn btn-primary">Read more</a>
		  </div>
		</div>
	</div>
</div>
</div>
<br>
</body>
</html>