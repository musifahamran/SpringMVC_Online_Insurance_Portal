<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<title>Purchase Policy</title>
<link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
<style>
body {
	margin:  0;
}
.page-content {
	width: 100%;
	margin:  0 auto;
	display: flex;
	display: -webkit-flex;
	justify-content: center;
	-o-justify-content: center;
	-ms-justify-content: center;
	-moz-justify-content: center;
	-webkit-justify-content: center;
	align-items: center;
	-o-align-items: center;
	-ms-align-items: center;
	-moz-align-items: center;
	-webkit-align-items: center;
    background-image: url('resources/image/background/light_green.webp');
	background-repeat: no-repeat;
	background-attachment: fixed;
  background-size: cover;
}
.form-v10-content  {
	background: #fff;
	width: 1100px;
	border-radius: 10px;
	-o-border-radius: 10px;
	-ms-border-radius: 10px;
	-moz-border-radius: 10px;
	-webkit-border-radius: 10px;
	box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
	-o-box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
	-ms-box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
	-webkit-box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
	margin: 95px 0;
	position: relative;
	font-family: 'Montserrat', sans-serif;
}
.form-v10-content .form-detail {
	position: relative;
	width: 100%;
	display: flex;
	display: -webkit-flex;
}
.form-v10-content .form-detail h2 {
	font-weight: 500;
	font-size: 25px;
	margin-bottom: 34px;
	padding: 33px 50px 0px 60px;
}
.form-v10-content .form-detail .form-left {
	border-top-left-radius: 10px;
	border-bottom-left-radius: 10px;
	width: 100%;
}
.form-v10-content .form-detail .form-left h2{
	color: #2a5453;
}
.form-v10-content .form-detail .form-right {
	width: 100%;
	background: #2a5453;
	border-top-right-radius: 10px;
	border-bottom-right-radius: 10px;
}
.form-v10-content .form-detail .form-right h2, h6 {
	color: #fff;
}
.form-v10-content .form-detail .form-right h6 {
	left-padding: 100px;
}
.form-v10-content .form-detail .form-group {
	display: flex;
	display: -webkit-flex;
}
.form-v10-content .form-detail .form-row {
	position: relative;
	margin-bottom: 24px;
	padding-left: 60px;
    padding-right: 50px;
}
.form-v10-content .form-detail .form-left .form-group .form-row.form-row-1 {
	width: 50%;
	padding: 0 12px 0 60px;
}
.form-v10-content .form-detail .form-left .form-group .form-row.form-row-2 {
	width: 50%;
	padding: 0 50px 0 12px;
}
.form-v10-content .form-detail .form-left .form-group .form-row.form-row-3 {
	width: 73%;
	padding: 0 12px 0 60px;
}
.form-v10-content .form-detail .form-left .form-group .form-row.form-row-4 {
	width: 50%;
	padding: 0 50px 0 12px;
}
.form-v10-content .form-detail .form-right .form-group .form-row.form-row-1 {
	width: 50%;
	padding: 0 12px 0 60px;
}
.form-v10-content .form-detail .form-right .form-group .form-row.form-row-2 {
	width: 100%;
	padding: 0 50px 0 12px;
}
.form-v10-content .form-detail select,
.form-v10-content .form-detail input {
	width: 100%;
    padding: 11.5px 15px 15px 15px;
    border: 1px solid transparent;
    background: transparent;
    appearance: unset;
    -moz-appearance: unset;
    -webkit-appearance: unset;
    -o-appearance: unset;
    -ms-appearance: unset;
    outline: none;
    -moz-outline: none;
    -webkit-outline: none;
    -o-outline: none;
    -ms-outline: none;
    font-family: 'Montserrat', sans-serif;
    font-size: 16px;
    box-sizing: border-box;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -o-box-sizing: border-box;
    -ms-box-sizing: border-box;
}
.form-v10-content .form-detail select {
	background: 0 0;
	position: relative;
	z-index: 9;
	cursor: pointer;
}
.form-v10-content .form-detail .form-left select {
	color: #666;
}
.form-v10-content .form-detail .form-right select {
	color: #f2f2f2;
}
.form-v10-content .form-detail .select-btn {
	z-index: 0;
    position: absolute;
    top: 30%;
    right: 11.5%;
    font-size: 18px;
}
.form-v10-content .form-detail .form-left .select-btn {
    color: #666;
}
.form-v10-content .form-detail .form-right .select-btn {
    color: #f2f2f2;
}
.form-v10-content .form-detail .form-group .form-row.form-row-4 .select-btn {
	top: 20%;
	right: 26%;
}
.form-v10-content .form-detail .form-right .form-group .form-row.form-row-2 .select-btn {
	top: 20%;
	right: 19%;
}
.form-v10-content .form-detail .form-left input {
	color: #000;
}
.form-v10-content .form-detail .form-right input {
	color: #fff;
}
.form-v10-content .form-detail .form-left input,
.form-v10-content .form-detail .form-left select {
	border-bottom: 1px solid #ccc;
}
.form-v10-content .form-detail .form-left input:focus,
.form-v10-content .form-detail .form-left select:focus {
	border-bottom: 1px solid #999;
}
.form-v10-content .form-detail .form-right input,
.form-v10-content .form-detail .form-right select {
	border-bottom: 1px solid;
	border-bottom-color: rgba(255, 255, 255, 0.3);
}
.form-v10-content .form-detail .form-right input:focus,
.form-v10-content .form-detail .form-right select:focus {
	border-bottom: 1px solid #ccc;
}
.form-v10-content .form-detail .form-right select option {
	background: #4835d4;
}
.form-v10-content .form-detail .form-checkbox {
	margin-top: 37px;
	padding: 0 50px 0 60px;
	position: relative;
}
.form-v10-content .form-detail .form-checkbox input {
	position: absolute;
    opacity: 0;
}
.form-v10-content .form-detail .form-checkbox .checkmark {
	position: absolute;
    top: 1px;
    left: 60px;
    height: 15px;
    width: 15px;
    border: 1px solid #e5e5e5;
    cursor: pointer;
}
.form-v10-content .form-detail .form-checkbox .checkmark::after {
	content: "";
    position: absolute;
    left: 5px;
   	top: 1px;
    width: 3px;
    height: 8px;
    border: 1px solid #fff;
    border-width: 0 2px 2px 0;
    -webkit-transform: rotate(45deg);
    -ms-transform: rotate(45deg);
    -o-transform: rotate(45deg);
    -moz-transform: rotate(45deg);
    transform: rotate(45deg);
    display: none;
}
.form-v10-content .form-detail .form-checkbox input:checked ~ .checkmark::after {
    display: block;
}
.form-v10-content .form-detail .form-checkbox p {
    margin-left: 34px;
    color: #e5e5e5;
    font-size: 14px;
    font-weight: 400;
}
.form-v10-content .form-detail .form-checkbox .text {
	font-weight: 400;
	color: #fff;
	text-decoration: underline;
}
.form-v10-content .form-detail .form-right .form-row-last {
    padding-left: 60px;
    margin: 44px 0 10px;
}
.form-v10-content .form-detail .form-right .register {
	background: #fff;
	border-radius: 25px;
	-o-border-radius: 25px;
	-ms-border-radius: 25px;
	-moz-border-radius: 25px;
	-webkit-border-radius: 25px;
	box-shadow: 0px 6px 17px 0px rgba(0, 0, 0, 0.15);
	-o-box-shadow: 0px 6px 17px 0px rgba(0, 0, 0, 0.15);
	-ms-box-shadow: 0px 6px 17px 0px rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0px 6px 17px 0px rgba(0, 0, 0, 0.15);
	-webkit-box-shadow: 0px 6px 17px 0px rgba(0, 0, 0, 0.15);
	width: 180px;
	border: none;
	margin: 6px 0 50px 0px;
	cursor: pointer;
	color: #333;
	font-weight: 700;
	font-size: 15px;
}
.form-v10-content .form-detail .form-right .register:hover {
	background: #ccc;
}
.form-v10-content .form-detail .form-right .form-row-last input {
	padding: 12.5px;
}
.form-v10-content .form-detail .form-left input::-webkit-input-placeholder { /* Chrome/Opera/Safari */
  color: #666;
  font-size: 16px;
}
.form-v10-content .form-detail .form-left input::-moz-placeholder { /* Firefox 19+ */
  color: #666;
  font-size: 16px;
}
.form-v10-content .form-detail .form-left input:-ms-input-placeholder { /* IE 10+ */
  color: #666;
  font-size: 16px;
}
.form-v10-content .form-detail .form-left input:-moz-placeholder { /* Firefox 18- */
  color: #666;
  font-size: 16px;
}
.form-v10-content .form-detail .form-right input::-webkit-input-placeholder { /* Chrome/Opera/Safari */
  color: #f2f2f2;
  font-size: 16px;
}
.form-v10-content .form-detail .form-right input::-moz-placeholder { /* Firefox 19+ */
  color: #f2f2f2;
  font-size: 16px;
}
.form-v10-content .form-detail .form-right input:-ms-input-placeholder { /* IE 10+ */
  color: #f2f2f2;
  font-size: 16px;
}
.form-v10-content .form-detail .form-right input:-moz-placeholder { /* Firefox 18- */
  color: #f2f2f2;
  font-size: 16px;
}
option { 
    background: white;
    color:black;
}
/* Responsive */
@media screen and (max-width: 1199px) {
	.form-v10-content {
		margin:  95px 20px;
	}
}
@media screen and (max-width: 991px) and (min-width: 768px) {
	.form-v10-content .form-detail .form-group {
		flex-direction:  column;
		-o-flex-direction:  column;
		-ms-flex-direction:  column;
		-moz-flex-direction:  column;
		-webkit-flex-direction:  column;
	}
	.form-v10-content .form-detail .form-left .form-group .form-row.form-row-1,
	.form-v10-content .form-detail .form-left .form-group .form-row.form-row-2,
	.form-v10-content .form-detail .form-left .form-group .form-row.form-row-3,
	.form-v10-content .form-detail .form-left .form-group .form-row.form-row-4,
	.form-v10-content .form-detail .form-right .form-group .form-row.form-row-1,
	.form-v10-content .form-detail .form-right .form-group .form-row.form-row-2 {
	    width: auto;
	    padding: 0 50px 0 60px;
	}
	.form-v10-content .form-detail .select-btn,
	.form-v10-content .form-detail .form-left .form-group .form-row.form-row-4 .select-btn,
	.form-v10-content .form-detail .form-right .form-group .form-row.form-row-2 .select-btn {
		right: 15%;
	}

}
@media screen and (max-width: 767px) {
	.form-v10-content .form-detail {
		flex-direction:  column;
		-o-flex-direction:  column;
		-ms-flex-direction:  column;
		-moz-flex-direction:  column;
		-webkit-flex-direction:  column;
	}
	.form-v10-content .form-detail .form-right {
		border-top-right-radius: 0px;
    	border-bottom-left-radius: 10px;
	}
	.form-v10-content .form-detail .form-left {
		padding-bottom: 50px;
	}
}
@media screen and (max-width: 575px) {
	.form-v10-content .form-detail .form-group {
		flex-direction:  column;
		-o-flex-direction:  column;
		-ms-flex-direction:  column;
		-moz-flex-direction:  column;
		-webkit-flex-direction:  column;
	}
	.form-v10-content .form-detail .form-row,
	.form-v10-content .form-detail .form-left .form-group .form-row.form-row-1,
	.form-v10-content .form-detail .form-left .form-group .form-row.form-row-2,
	.form-v10-content .form-detail .form-left .form-group .form-row.form-row-3,
	.form-v10-content .form-detail .form-left .form-group .form-row.form-row-4,
	.form-v10-content .form-detail .form-right .form-group .form-row.form-row-1,
	.form-v10-content .form-detail .form-right .form-group .form-row.form-row-2 {
	    width: auto;
	    padding: 0 30px;
	}
	.form-v10-content .form-detail .select-btn,
	.form-v10-content .form-detail .form-left .form-group .form-row.form-row-4 .select-btn,
	.form-v10-content .form-detail .form-right .form-group .form-row.form-row-2 .select-btn {
		right: 15%;
	}
	.form-v10-content .form-detail h2, h6 {
	    padding: 33px 30px 0px 30px;
	}
	.form-v10-content .form-detail .form-checkbox {
		padding: 0 30px;
	}
	.form-v10-content .form-detail .form-checkbox .checkmark {
		left: 30px;
	}
	.form-v10-content .form-detail .form-right .form-row-last {
		padding-left: 0;
		text-align: center;
	    margin: 44px 0 30px;
	}
}
</style>

<script type="text/javascript">
function populate(type,name){
	var type = parseInt(document.getElementById(type).value);
	var name = document.getElementById(name);
	var policyplanID =  document.getElementById("policyPlan");
	var rate = document.getElementById("plan_rate");
	var coverage = document.getElementById("plan_coverage");
	var duration = document.getElementById("plan_duration");
	var addCharge = document.getElementById("plan_addCharge");
	var policyprice = document.getElementById("policy_price");
	var policydesc = document.getElementById("policy_description");
	policyplanID = "Select Plan";
	var optionArray = [];
	name.innerHTML = "";
	policyprice.value="";
	policyprice.placholder = "Price";
	policydesc.value="";
	policydesc.innerHTML = "";
	rate.value="";
	rate.placeholder="Rate (%)";
	coverage.value="";
	coverage.placeholder="Coverage";
	duration.value="";
	duration.placeholder = "Duration (Year)";
	addCharge.value="";
	addCharge.placeholder="Additional Charge";
	
	optionArray.push("None | Policy Name" );
	<c:forEach var="list" items="${policyList}">
		if(type == ${list.getPol_type_id().getPolicyTypeID()}){
			optionArray.push("${list.getPolicy_id()}|${list.getName()}" );
		}
	</c:forEach>
	
	for(var option in optionArray){
		var pair = optionArray[option].split("|");
		var newOption = document.createElement("option");
		newOption.value = pair[0];
		newOption.innerHTML = pair[1];
		name.options.add(newOption);
	}
	policyplanID.selectedIndex=0;
	
}
function setPolicyDetail(){
	var policyname = parseInt(document.getElementById("policyName").value);
	var policyprice = document.getElementById("policy_price");
	var policydesc = document.getElementById("policy_description");
	var rate = document.getElementById("plan_rate");
	var coverage = document.getElementById("plan_coverage");
	var duration = document.getElementById("plan_duration");
	var addCharge = document.getElementById("plan_addCharge");
	var policyplanID =  document.getElementById("policyPlan");
		<c:forEach var="list" items="${policyList}">
		if(policyname == ${list.getPolicy_id()}){
			policyprice.value = "${list.getPrice()}";
			policydesc.value = "${list.getDescription()}";
		}
		</c:forEach>
		
		rate.value="";
		rate.placeholder="Rate (%)";
		coverage.value="";
		coverage.placeholder="Coverage";
		duration.value="";
		duration.placeholder = "Duration (Year)";
		addCharge.value="";
		addCharge.placeholder="Additional Charge";
		policyplanID.selectedIndex=0;
	
}
function getPlanDetails(){
	var policyID = parseInt(document.getElementById("policyName").value);
	var policyplanID =  parseInt(document.getElementById("policyPlan").value);
	var rate = document.getElementById("plan_rate");
	var coverage = document.getElementById("plan_coverage");
	var duration = document.getElementById("plan_duration");
	var addCharge = document.getElementById("plan_addCharge");
	<c:forEach var="list" items="${policyList}">
	if(policyID == ${list.getPolicy_id()}){
		if(policyplanID==0){
			rate.value = "${list.getPlan().get(0).getRate()}";
			coverage.value = "${list.getPlan().get(0).getCoverage()}";
			duration.value = "${list.getPlan().get(0).getDuration()}";
			addCharge.value = "${list.getPlan().get(0).getAdditional_charge()}";
		}
		else if(policyplanID==1){
			rate.value = "${list.getPlan().get(1).getRate()}";
			coverage.value = "${list.getPlan().get(1).getCoverage()}";
			duration.value = "${list.getPlan().get(1).getDuration()}";
			addCharge.value = "${list.getPlan().get(1).getAdditional_charge()}";
		}
		
	}
	</c:forEach>
}
</script>
<section class="form-v10">
<div class="page-content">
		<div class="form-v10-content">
			<form:form class="form-detail needs-validation" action="buy-policy" method="post" id="myform" modelAttribute="policy" novalidate="true">
				<div class="form-left">
					<h2>Available Policy</h2>
					<div class="form-row">
							<form:select path="pol_type_id" name="type" id="type" onChange="populate(this.id,'policyName')" required="required"> 
						   	<form:option value="" label="Select Policy Type" hidden="true" disabled="true" selected="true"/>
						   	<c:forEach var="list" items="${policyTypes}">
						   	<c:if test="${list.getPolicyCategory() == customerType}">
	        					<form:option id="${list.getPolicyTypeID()}" value="${list.getPolicyTypeID()}">${list.getType()}</form:option>
	        				</c:if>
	    					</c:forEach>
							</form:select>
							<span class="select-btn">
							  	<i class="fa fa-caret-down"></i>
							</span>
							<div class="invalid-feedback">
			        			Please select policy type.
			      			</div>

					</div>
					<div class="form-row">
						<select id="policyName" name="policyName" onChange="setPolicyDetail()" required>
						<option value="" hidden="true" disabled selected>Please select policy type to view policies</option>
						</select>
						<span class="select-btn">
						  	<i class="fa fa-caret-down"></i>
						</span>	
						<div class="invalid-feedback">
		        			Please select policy name.
		      				</div>
					</div>
					
					<div class="form-group">
						<div class="form-row">
					<input  type="text" name="policy_price" id="policy_price" class="input-text" placeholder="Price" readonly>
					</div>
					</div>
					<div class="form-row">
						 <label for="exampleFormControlTextarea1" class="form-label">Policy Description</label>
		  				<textarea class="form-control" name="policy_description"id="policy_description" rows="10" readonly></textarea>
					</div>
				</div>
				<div class="form-right">
					<h2>Policy Plans</h2>
					<div class="form-row">
						<select name="policyPlan" class="policyPlan" id="policyPlan"onChange="getPlanDetails()" required>
						    <option value="" hidden="true" disabled selected>Policy Plan</option>
						    <option value="0" style="background-color:white;">Basic</option>
						    <option value="1" style="background-color:white;">Premium</option>
						</select>
						<span class="select-btn">
						  	<i class="fa fa-caret-down"></i>
						</span>	
						<div class="invalid-feedback">
		        			Please select policy plan.
		      			</div>
					</div>
					<div class="form-row">
						<input type="text" name="plan_rate" class="plan_rate" id="plan_rate" placeholder="Rate (%)" readonly>
					</div>
					<div class="form-row">
						<input type="text" name="plan_coverage" class="plan_coverage" id="plan_coverage" placeholder="Coverage" readonly>
					</div>
					<div class="form-row">
						<input type="text" name="plan_duration" class="plan_duration" id="plan_duration" placeholder="Duration (Year)" readonly>
					</div>
					<div class="form-row">
						<input type="text" name="plan_addCharge" class="plan_addCharge" id="plan_addCharge" placeholder="Additional Charge" readonly>
					</div>
					<div class="form-row-last">
						<input type="submit" name="register" class="register py-2" value="Purchase" style="display:block;float:left">
						<a href="<c:url value="/my-policy"/>" class="btn register py-2" style="display:block;float:left">Cancel</a>
					</div>
				</div>
			</form:form>
			   <div class="toast" id="myToast" style=" background-color:#ffe9ec;position: absolute; top: 10px; left: 35%;" data-delay="5000">
				    <div class="toast-header">
				        <strong class="me-auto"> You have purchased a policy!</strong>
				        <small></small>
				        <button type="button" class="btn-close" data-dismiss="toast"></button>
				    </div>
				    <div class="toast-body">
				      <p>${successMessage}</p>
				    </div>
				</div>
		  <script>
		  <c:if test="${!empty successMessage}">
		  		$("#myToast").toast("show");
		  </c:if>
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
		</div>
	</div>
	</section>
</html>