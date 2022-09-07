<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<title>Customer Portal</title>
<link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<style>
.wrapper{

    width: 100%;
    height: 50vh;
    display: flex;
    justify-content: center;
    align-items: center;
}


.card{

    height: 220px;
    width: 220px;
    background-color:#FFCCD2;
    border-radius: 10px;
    position: relative;
    overflow: hidden;
    cursor: pointer;
    text-align: center!important;

}

.card::before{
    position: absolute;
    width: 100%;
    height: 100%;
    content: "";
    top:-50%;
    background-color:#FF9292;
    transform: skewY(345deg);

  
}
.card .image{
    position: absolute;
    width: 100%;    
    display: flex;
    justify-content: center;
    align-items: center;
    top-padding:100px;
}
.container-link{

    position: absolute;
    color: black;
    bottom: 30px !important;
    text-align: center;
    left:25%;

}
.container-link2{

    position: absolute;
    color: black;
    bottom: 30px !important;
    text-align: center;
    left:10%;

}
body{
background-image: url('resources/image/background/customerbackground.webp');
background-repeat: no-repeat;
background-attachment: fixed;
  background-size: cover;
}
</style>
<div class="customerContainer">
<section>
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 order-2 order-lg-1">
                        <h3>Welcome back ${user.username}</h3>
                        <p class="lead">Providing the best care at an affordable price</p>
                        <p class="lead"> </p>
                        <p class="lead"></p>
                        <p></p>
                    </div>
                    <div class="col-lg-8 order-2 order-lg-1 text-end">
                        <button type="button" class="btn btn-secondary" style="width:90px;height:40px;"><a class="nav-link" href="homePage">Logout</a></button>
                    </div>
            </div>
        </div>
</section>
<section>
            <div class="container">
                <div class="row">
                <div class="col-lg-3 order-1 order-lg-2">
		                <div class="wrapper">
			            <a href="my-policy" class="card stretched-link text-center">
			              <div class="image">
			                 <img src="resources/image/logo/policy_logo.png" width="120">  
			                 </div>
			               <div class="container-link text-center">
			                  <h4>My Policy</h4>
			                  </div>           
			                </a>   
	        			</div>
	                </div>
	                  <div class="col-lg-3 order-1 order-lg-2">
		                <div class="wrapper">
			             <a href="my-claim" class="card stretched-link text-center">
			              <div class="image ps-3">
			                 <img src="resources/image/logo/claim_logo.png" width="120">  
			                 </div>
			               <div class="container-link text-center">
			                  <h4>My Claim</h4>
			                  </div>           
			                </a>   
	        			</div>
	                </div>
	                  <div class="col-lg-3 order-1 order-lg-2">
		                <div class="wrapper">
			             <a href="purchase-policy" class="card stretched-link text-center">
			              <div class="image">
			                 <img src="resources/image/logo/add_logo2.png" width="120">  
			                 </div>
			               <div class="container-link2 text-center">
			                  <h4>Purchase Policy</h4>
			                  </div>           
			                </a>   
	        			</div>
	                </div>
	                  <div class="col-lg-3 order-1 order-lg-2">
		                <div class="wrapper">
			            <a href="my-policy" class="card stretched-link text-center">
			              <div class="image ps-4">
			                 <img src="resources/image/logo/support_logo2.png" height="120" width="140">  
			                 </div>
			               <div class="container-link text-center ps-2">
			                  <h4>Support</h4>
			                  </div>           
			                </a>   
	        			</div>
	                </div>
                </div>
            </div>
</section>
<section class="bg-light">
<br><br>
</section>
</div>
</html>