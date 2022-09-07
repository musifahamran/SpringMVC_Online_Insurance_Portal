<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<title>Update Password</title>
<link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
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
			<form method="post" id="passwordForm">
			<input type="password" class="input-lg form-control" name="password1" id="password1" placeholder="New Password" autocomplete="off">
			<br>
			<input type="password" class="input-lg form-control" name="password2" id="password2" placeholder="Repeat Password" autocomplete="off">
			<br>
			<input type="submit" class="col-xs-12 btn btn-primary btn-load btn-lg" data-loading-text="Changing Password..." value="Change Password">
			</form>
		</div>
	</div>
</div>
</div>
</div>
</section>
</html>