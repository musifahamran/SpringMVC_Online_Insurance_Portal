<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
<style>
.form-gap {
    padding-top: 70px;
}
</style>
<div class="form-gap"></div>
<div class="container" >
	<div class="row">
		<div class="col-md-3 offset-md-4 mx-auto">
            <div class="panel panel-default">
              <div class="panel-body">
                <div class="text-center">
                  <h3><i class="fa fa-lock fa-4x"></i></h3>
                  <h2 class="text-center">Forgot Password?</h2>
                  <p>Enter your email address to get started.</p>
                  <div class="panel-body">
                    <form method="post" action="update-forgotPwd" class="form needs-validation" novalidate>
                     <c:if test="${!empty message}">
						 <div class="alert  alert-warning  fade show" role="alert">
						 	<strong align="center">${message}</strong>
						  </button>
						 </div>
						 </c:if>
                      <div class="form-group">
                        <div class="input-group">
                          <input id="email" name="email" placeholder="Email address" class="form-control"  type="email" autocomplete="off" required>
                           <div class="invalid-feedback">
		        			Please enter your email address.
		      				</div>
                        </div>
                       
                      </div>
                      <div class="form-group">
                      <br>
                        <input name="submit" class="btn btn-lg btn-primary btn-block" value="Check Email" type="submit">
                      </div>
                      <input type="hidden" class="hide" name="token" id="token" value=""> 
                      
                    </form>
    
                  </div>
                </div>
              </div>
            </div>
          </div>
	</div>
</div>
<script>
						(function () {
							  'use strict'
						
							  // Fetch all the forms we want to apply custom Bootstrap validation styles to
							  var forms = document.querySelectorAll('.needs-validation')
						
							  // Loop over them and prevent submission
							  Array.prototype.slice.call(forms)
							    .forEach(function (form) {
							      form.addEventListener('submit', function (event) {
							        if (!form.checkValidity()) {
							          event.preventDefault()
							          event.stopPropagation()
							        }
						
							        form.classList.add('was-validated')
							      }, false)
							    })
							})()
					</script>
<br><br><br><br><br><br>
</html>