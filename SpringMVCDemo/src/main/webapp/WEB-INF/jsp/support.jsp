<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Support</title>
<link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
.container{
padding:0px 300px;
}
body{
	background: linear-gradient(331deg, rgba(245,255,167,0.8524452017134979) 35%, rgba(238,220,173,0.7768149496126575) 54%);
}
</style>
</head>
<body>
<div class="container-fluid  g-0">
	<div class="row">
		<div class="jumbotron" style="height:110px;background-image:url('resources/image/background/contactus.jpeg');">
  			<h2 class="display-3" align="center"  style="font-weight:bold;">Contact Us</h2>
		</div>
 	</div>
 	<br>
 	<br>
 	<div class="row">
 	<div class="mx-auto order-0">
	<!-- Nav tabs -->
	<ul class="nav nav-tabs justify-content-center" role="tablist">
                <li class="nav-item"><a class="nav-link active" data-toggle="tab" role="tab" href="#contact" aria-controls="contact" aria-selected="true" style="color:black;">Call us</a></li>
                <li class="nav-item"><a class="nav-link"  data-toggle="tab" role="tab" href="#location" aria-controls="location" aria-selected="false" style="color:black;">Visit Us</a></li>
                <li class="nav-item"><a class="nav-link"  data-toggle="tab" role="tab" href="#feedback" aria-controls="feedback" aria-selected="false" style="color:black;">Feedback</a></li>
      </ul>

	<!-- Tab panes -->
	<div class="tab-content">
	  <div class="tab-pane active" id="contact" role="tabpanel" aria-labelledby="contact-tab">
	  <div class="container" align="center">
	  <p>You can refer to our hotlines below. </p> 
		<br>
        <p>Operating hours for hotlines<br>
        Monday - Friday: 8.30am - 6.30pm<br>
        Saturday, Sunday & public holidays: Closed</p>
        <br><br>
	  </div>
	  </div>
	  <div class="tab-pane" id="location" role="tabpanel" aria-labelledby="location-tab">
	  <div class="container-fluid  g-0" align="center">
	  <div class="row">
	  <div class="col-1"></div>
	    <div class="col-5">
	    <table>
	  <tr>
	  <td><h5 class="card-title" align="left">Our branches</h5><br></td>
	  </tr>
	  <tr><td><h6 class="card-title" align="left">Jurong branch</h6></td></tr>
	  <tr><td>1 Jurong West Central 2, Singapore 648886<td></tr>
	   <tr><td>50 Jurong Gateway Rd, Singapore 608549<br><td></tr>
	   <tr><td><h6 class="card-title" align="left">Sin Ming branch</h6></td></tr>
	  <tr><td>18 Sin Ming Ln, Singapore 573960<br><td></tr>
	   <tr><td><h6 class="card-title" align="left">Marina branch</h6></td></tr>
	  <tr><td>12 Marina View, Singapore 018961<br><td></tr>
	   <tr><td><h6 class="card-title" align="left">Commonwealth branch</h6></td></tr>
	  <tr><td>50 Commonwealth Dr, Singapore 142050<br><td></tr>
	   <tr><td><h6 class="card-title" align="left">Turf branch</h6></td></tr>
	  <tr><td>200 Turf Club Rd, Singapore 287994<br><td></tr>
	   <tr><td><h6 class="card-title" align="left">Holland Hill branch</h6></td></tr>
	  <tr><td>12 Holland Hill, Singapore 278743<br><td></tr>
	  </table>
	  </div>
	  <div class="col">
	  <iframe src="https://www.google.com/maps/d/u/0/embed?mid=1SK7n4Krzy-A-Ho8crG9ZVFwQUoAZy3E&ehbc=2E312F&z=11" width="440" height="380"></iframe>
	  </div>
	  </div>  
	  </div>
	  </div>
	  <div class="tab-pane justify-content-center mx-auto px-5" id="feedback" role="tabpanel" aria-labelledby="messages-tab" style="width:40%;">
	   <div class="col">
	   <div class="mb-3">
		<label for="exampleFormControlInput1" class="form-label">Email address</label>
		  <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
		</div>
		<div class="mb-3">
		  <label for="exampleFormControlTextarea1" class="form-label">Feedback</label>
		  <textarea class="form-control" id="exampleFormControlTextarea1" rows="10"></textarea>
		</div>
			<div class="col-auto">
	    	<button type="submit" class="btn btn-primary mb-3">Submit</button>
	  		</div>
	  </div>

	</div>
	</div>
 	</div>
</div>
</div>
<br><br>
</body>
</html>