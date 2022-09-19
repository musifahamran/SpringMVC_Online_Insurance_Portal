<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password</title>
<link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
<style>
.center {
  margin-left: auto;
  margin-right: auto;
}
</style>
<section>
<div class="container py-5 ">
	<div class="row">
		<div class="col-sm-12">
		<h1>Change Password</h1>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-6 col-sm-offset-3">
		<div class="card mb-5">
          <div class="card-body">
			<p class="text-left">Use the form below to change your password. Your password cannot be the same as your username.</p>
			<form method="post" id="passwordForm" action="update-passwordUser" class="needs-validation" novalidate>
			<input type="password" class="input-lg form-control" name="password1" id="password1" placeholder="New Password" autocomplete="off" required>
			<div class="invalid-feedback">
	        Please enter password.
	      	</div>
			<div class="row">
				<div class="col-sm-6">
				<span id="8char" class="fa fa-remove" style="color:#FF0004;"></span> 8 Characters Long<br>
				<span id="ucase" class="fa fa-remove" style="color:#FF0004;"></span> One Uppercase Letter
				</div>
				<div class="col-sm-6">
				<span id="lcase" class="fa fa-remove" style="color:#FF0004;"></span> One Lowercase Letter<br>
				<span id="num" class="fa fa-remove" style="color:#FF0004;"></span> One Number
				</div>
			</div>
			<br>
			<input type="password" class="input-lg form-control" name="password2" id="password2" placeholder="Repeat Password" autocomplete="off" required>
			<div class="invalid-feedback">
	        	Please retype password.
	      	</div>
			<div class="row">
				<div class="col-sm-12">
				<span id="pwmatch" class="fa fa-remove" style="color:#FF0004;"></span> Passwords Match
				</div>
			</div>
			<br>
			<input type="submit" class="col-xs-12 btn btn-primary btn-load btn-lg" data-loading-text="Changing Password..." value="Change Password">
			</form>
		</div>
	</div>
</div>
</div>
</div>
<script>
			$("input[type=password]").keyup(function(){
			    var ucase = new RegExp("[A-Z]+");
				var lcase = new RegExp("[a-z]+");
				var num = new RegExp("[0-9]+");
				
				if($("#password1").val().length >= 8){
					$("#8char").removeClass("fa-remove");
					$("#8char").addClass("fa-check");
					$("#8char").css("color","#00A41E");
				}else{
					$("#8char").removeClass("fa-check");
					$("#8char").addClass("fa-remove");
					$("#8char").css("color","#FF0004");
				}
				
				if(ucase.test($("#password1").val())){
					$("#ucase").removeClass("fa-remove");
					$("#ucase").addClass("fa-check");
					$("#ucase").css("color","#00A41E");
				}else{
					$("#ucase").removeClass("fa-check");
					$("#ucase").addClass("fa-remove");
					$("#ucase").css("color","#FF0004");
				}
				
				if(lcase.test($("#password1").val())){
					$("#lcase").removeClass("fa-remove");
					$("#lcase").addClass("fa-check");
					$("#lcase").css("color","#00A41E");
				}else{
					$("#lcase").removeClass("fa-check");
					$("#lcase").addClass("fa-remove");
					$("#lcase").css("color","#FF0004");
				}
				
				if(num.test($("#password1").val())){
					$("#num").removeClass("fa-remove");
					$("#num").addClass("fa-check");
					$("#num").css("color","#00A41E");
				}else{
					$("#num").removeClass("fa-check");
					$("#num").addClass("fa-remove");
					$("#num").css("color","#FF0004");
				}
				
				if($("#password1").val() == $("#password2").val()){
					$("#pwmatch").removeClass("fa-remove");
					$("#pwmatch").addClass("fa-check");
					$("#pwmatch").css("color","#00A41E");
				}else{
					$("#pwmatch").removeClass("fa-check");
					$("#pwmatch").addClass("fa-remove");
					$("#pwmatch").css("color","#FF0004");
				}
			});
</script>
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
</section>
</html>