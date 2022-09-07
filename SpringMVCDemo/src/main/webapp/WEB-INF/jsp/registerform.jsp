<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<style>
.error{color:red}
.nav-tabs{
    margin-top: 3%;
    border: none;
    background: #0062cc;
    border-radius: 1.5rem;
    width: 28%;
    float: right;
}
.nav-tabs .nav-link{
    padding: 2%;
    height: 34px;
    font-weight: 600;
    color: #fff;
    border-top-right-radius: 1.5rem;
    border-bottom-right-radius: 1.5rem;
}
.nav-tabs .nav-link:hover{
    border: none;
}
.nav-tabs .nav-link.active{
    width: 100px;
    color: #0062cc;
    border: 2px solid #0062cc;
    border-top-left-radius: 1.5rem;
    border-bottom-left-radius: 1.5rem;
}
</style>
</head>  
<body>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<section class="h-100 bg-dark">
  <div class="container py-5 h-70">
    <div class="row d-flex justify-content-center align-items-center h-70">
      <div class="col">
        <div class="card card-registration my-4">
          <div class="row g-0">
            <div class="col-xl-6 d-none d-xl-block">
              <img src="resources/image/registerPhoto.jpg"
                alt="Sample photo" class="img-fluid"
                style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem; height:86vh;" />
            </div>
            <div class="col-xl-6">
            <form:form method="post" action="save">
            <div class="row">
              <div class="card-body p-md-5 text-black">
               <div class="col">
                <h3 class="mb-5 text-uppercase">Sign Up</h3>
                </div>
                 <div class="col">
                 <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Personal</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Corporate</a>
                            </li>
                        </ul>
                 </div>
                 </div>  
                <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                    <label class="form-label" for="form3Example1m">First name</label>
                      <form:input path="fname" type="text" id="form3Example1m" class="form-control form-control-lg" />
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                     <label class="form-label" for="form3Example1n">Last name</label>
                      <form:input path="lname" type="text" id="form3Example1n" class="form-control form-control-lg" />
                    </div>
                  </div>
                </div>

                <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                     <label class="form-label" for="form3Example1m1">Username</label>
                      <form:input path="username" type="text" id="form3Example1m1" class="form-control form-control-lg" />
                     
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                    <label class="form-label" for="form3Example1n1">Password</label>
                      <form:password path="password" id="form3Example1n1" class="form-control form-control-lg" />
                    </div>
                  </div>
                </div>
				<div class="row">
				  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                    <label class="form-label" for="form3Example1n1">Email ID</label>
                      <form:input path="email" type="text" id="form3Example1n1" class="form-control form-control-lg" />
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                     <label class="form-label" for="form3Example1m1">Contact No</label>
                      <form:input path="contactNo" type="text" id="form3Example1m1" class="form-control form-control-lg" />
                    </div>
                  </div>
                </div>
                <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">

                  <h6 class="mb-0 me-4">Gender: </h6>
					
				  <div class="form-check form-check-inline mb-0 me-4">
                    <form:radiobutton path="Gender" value="Male" class="form-check-input"/>  
                    <label class="form-check-label" for="maleGender">Male</label>
                  </div>
                  <div class="form-check form-check-inline mb-0 me-4">
                    <form:radiobutton path="Gender" value="Female" class="form-check-input"/>  
                    <label class="form-check-label" for="femaleGender">Female</label>
                  </div>
                </div>
 
                <div class="d-flex justify-content-end pt-3">
                  <button type="button" class="btn btn-light btn-lg">Clear all</button>
                  <input type="submit" value="Register"class="btn btn-warning btn-lg ms-2">
                </div>

              </div>
              </form:form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>