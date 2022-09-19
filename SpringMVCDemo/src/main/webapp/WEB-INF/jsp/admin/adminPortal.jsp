<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
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
<br><br><h3><center>Welcome back ${adminUser.getFname()} <% out.println(" "); %> ${adminUser.getLname()}</center></h3><br><br>
<div class="container 100vh">
<div class="row">
<div class="col-1"></div>
	<div class="col">
		<div class="card" style="width: 18rem;">
		  <img src="resources/image/social-event.png" class="card-img-top" alt="event">
		  <div class="card-body">
		    <h5 class="card-title">Prodexa Annual Event</h5>
		    <p class="card-text">Come and participate in our company's annual event!</p>
		    <a href="#companyEvent" class="btn btn-primary" data-toggle="modal">Read more</a>
		  </div>
		</div>
	</div>
<div class="col">
		<div class="card" style="width: 18rem;">
		  <img src="resources/image/announcement.png" class="card-img-top" alt="annoucement" style="height:200px">
		  <div class="card-body">
		    <h5 class="card-title">Announcements</h5>
		    <p class="card-text">Find out the latest happenings in the company</p>
		    <a href="#companyAnnoucement" class="btn btn-primary" data-toggle="modal">Read more</a>
		  </div>
		</div>
	</div>
<div class="col">
		<div class="card" style="width: 18rem;">
		  <img src="resources/image/Health-checkup.jpg" class="card-img-top" alt="health check" style="height:170px">
		  <div class="card-body">
		    <h5 class="card-title">Check yourself</h5>
		    <p class="card-text">Even with loosening of COVID-19 restrictions, remember to check your temperature!</p>
		    <a href="#companyHealth" class="btn btn-primary" data-toggle="modal">Read more</a>
		  </div>
		</div>
	</div>
</div>
</div>
<div class="modal fade" id="companyEvent" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">	
				   <div class="modal-dialog modal-dialog-centered" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLongTitle">Company Event</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				     
				      <div class="modal-body">
				      <input type="hidden" id="linkId" />
				        <p>Our annual sports competition is upcoming! <br>Train yourselves to win fabulous prizes ranging from OLED TV to Ipad.<p>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
				      </div>
				    </div>
				  </div>
			
				</div>	
				
 <div class="modal fade" id="companyAnnoucement" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">	
				   <div class="modal-dialog modal-dialog-centered" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLongTitle">Company Announcement</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				     
				      <div class="modal-body">
				      <input type="hidden" id="linkId" />
				        <p>Prodexa is celebrating its upcoming 10th anniversary since the<br> founding of our company. Join us on 24th November and participate<p>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
				      </div>
				    </div>
				  </div>
			
				</div>	
				<div class="modal fade" id="companyHealth" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">	
				   <div class="modal-dialog modal-dialog-centered" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLongTitle">Daily Checkup</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				     
				      <div class="modal-body">
				      <input type="hidden" id="linkId" />
				        <p>With Singapore lessing the COVID-19 rules, it is more important we check our temperature and ensure our part<br>
				        in preventing COVID-19.<p>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
				      </div>
				    </div>
				  </div>
			
				</div>	
<br><br>
</html>