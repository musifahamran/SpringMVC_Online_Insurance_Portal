<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
       <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Profile</title>
<link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<style>
.gradient-custom {
/* fallback for old browsers */
background: #f6d365;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to right bottom, rgba(246, 211, 101, 1), rgba(253, 160, 133, 1));

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to right bottom, rgba(246, 211, 101, 1), rgba(253, 160, 133, 1))
}
</style>
</head>
<body>
<section style="background-color: #eee;">
<form:form class="form-detail" action="update-customer-profile" method="post" id="myform">
  <div class="container py-5">
    <div class="row">
      <div class="col">
        <nav aria-label="breadcrumb" class="bg-light rounded-3 p-3 mb-4">
          <ol class="breadcrumb mb-0">
            <li class="breadcrumb-item active" aria-current="page">User Profile</li>
          </ol>
        </nav>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-4">
        <div class="card mb-4">
          <div class="card-body text-center">
            <img src="resources/image/logo/admin.jpg" alt="avatar"
              class="rounded-circle img-fluid" style="width: 150px;">
            <h5 class="my-3">${customerUser.getFname()} <% out.println(" "); %> ${customerUser.getLname()}</h5>
            
            <p class="text-muted mb-1">Customer</p>
            <div class="d-flex justify-content-center mb-2">
             	<input type="submit" name="updateProfile" class="btn btn-primary" value="Update Profile" modelAttribute="customerModel">
              <a href="my-profile" class="btn btn-secondary" role="button">Cancel</a>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-8">
        <div class="card mb-4">
          <div class="card-body">
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">User Name</p>
              </div>
              <div class="col-sm-9">
              <p class="text-muted mb-0">${customerUser.getUsername()}</p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">First Name</p>
              </div>
              <div class="col-sm-9">
              <div class="row">
               <div class="col">
                <input type="text" name="customer_fname" id="customer_fname" class="input-text" value="${customerUser.getFname()}" required>	
              </div>
              <div class="col ">
                Last Name <input type="text" name="customer_lname" id="customer_lname" class="input-text" value="${customerUser.getLname()}" required>	
              </div>
              </div>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Email</p>
              </div>
              <div class="col-sm-9">
             <p class="text-muted mb-0"></p>
              <input type="text" id="customer_email" name="customer_email" style="border: none;" value="${customerUser.getEmail()}" readonly>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Phone</p>
              </div>
              <div class="col-sm-9">
             <input type="text" id="customer_contactNo" name="customer_contactNo" style="border: none;" value="${customerUser.getContactNo()}" readonly>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Address</p>
              </div>
              <div class="col-sm-9">
              <input type="text" name="customer_address" id="customer_address" class="input-text" placeholder="Enter address" value="${customerUser.getAddress()}" required>	
              </div>
            </div>
          </div>
        </div>
    
      </div>
    </div>
  </div>
  </form:form>
</section>
</body>
</html>