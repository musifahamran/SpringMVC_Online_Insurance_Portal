<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<title>My Policy</title>
<link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<style>
.center {
  margin-left: auto;
  margin-right: auto;
}
.card {
        margin: 0 auto; /* Added */
        float: none; /* Added */
        margin-bottom: 10px; /* Added */
        border-style:none;
}
</style>
<br>
<section class="table-responsive-sm" style="width:80%; margin:0 auto;">
<br><br><br><br>
<c:choose>
 <c:when test="${empty myPolicy.getCustomerpolicy()}">	
	 <div class="card" align="center" style="width: 100%;">
	  <div class="card-body">
	    <h5 class="card-title">Welcome to your policy page! Here you can view all the policies you have purchased!</h5>
	    <h6 class="card-subtitle mb-2 text-muted"></h6>
	    <p class="card-text">However, you hold no policies at the moment. Click on the below link to purchase our policies..</p>
	    <a href="<c:url value="/purchase-policy" />" class="card-link">Buy Policy</a>
	  </div>
	</div>
	<br>
    </c:when>
    <c:otherwise>
    <h4 class="display-5" align="center">Policy List</h4>
    	<c:if test="${!empty updateMessage}">
				 <div class="alert  alert-primary alert-dismissible fade show" role="alert">
				 	<strong>${updateMessage}</strong>
				 	<button type="button" class="btn-close" data-dismiss="alert" aria-label="Close"></button>
				 </div>
				 </c:if>
    <br>
    <table id="myPolicyTable" class="table table-striped table-hover center dataTable" data-page-length="4">
        <thead class="table-dark">
            <tr>
                <th scope="col">Policy Name</th>
                <th scope="col">Type</th>
                 <th scope="col">Date of Purchase</th>
                 <th scope="col">End Date of Policy</th>
                 <th scope="col">Policy Status</th>
                 <th scope="col">Agent Comment</th>
                <th scope="col">Plan</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>
           <c:forEach items="${myPolicy.getCustomerpolicy()}" var="policy">
				<tr>
				<td>${policy.getPolicy().getName()}</td>
				<td>${policy.getPolicy().getPol_type_id()}</td>
				<td>${policy.getPurchaseDate()}</td>
				<td>${policy.getEndDate()}</td>
				<td>${policy.getActivePolicy()}</td>
				<td>${policy.getComment()}</td>
				<td><a href="#plan_detail_${policy.getPolicyplan().getPlan_id()}" class="btn btn-light" data-toggle="modal" value="">${policy.getPolicyplan().getPlan_type()}</a></td>
				<c:choose>
				<c:when test="${policy.getActivePolicy() != 'Approved' || policy.getPolicyplan().getPlan_type() == 'Premium'}">
				<td><input class="btn btn-secondary" type="button" value="Upgrade" disabled></td>
				</c:when>
				 <c:otherwise>
				 <td><a href="#upgrade_plan_${policy.getCustomerpolicy_id()}" class="btn btn-primary" data-toggle="modal">Upgrade</a></td>
				 </c:otherwise>
				 </c:choose>
				</tr>
				 <div class="modal fade" id="plan_detail_${policy.getPolicyplan().getPlan_id()}" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
				   <div class="modal-dialog modal-dialog-centered" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLongTitle">Your Chosen Plan</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				     
				      <div class="modal-body">
					      <div class="container">
					      	<div class="row">
					      	<p>Rate: ${policy.getPolicyplan().getRate()} <%out.print("%"); %></p>
					      	</div>
					      	<div class="row">
					      	<p>Coverage: <%out.print("$"); %>${policy.getPolicyplan().getCoverage()} </p>
					      	</div>
					      	<div class="row">
					      	<p>Duration: ${policy.getPolicyplan().getDuration()} <%out.print("years"); %></p>
					      	</div>
					      	<div class="row">
					      	<p>Price: <%out.print("$"); %>${policy.getPolicy().getPrice()} </p>
					      	</div>
					      </div>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
				      </div>
				    </div>
				  </div>
				  </div>
				   <div class="modal fade" id="upgrade_plan_${policy.getCustomerpolicy_id()}" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
				   <div class="modal-dialog modal-dialog-centered" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLongTitle">Upgrade Plan</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				     
				      <div class="modal-body">
					      <div class="container">
					      	<div class="row">
					      	<p>Would you like to upgrade plan to Premium?</p>
					      	</div>
					      	<div class="row">
					      	<p>You can only upgrade once and will no longer be able to go back to your previous plan till the duration expires.</p>
					      	</div>
					      </div>
				      </div>
				      <div class="modal-footer">
				        <a href="upgrade-plan/${policy.getCustomerpolicy_id()}" class="btn btn-primary">Yes</a>
				        <button type="button" class="btn btn-danger" data-dismiss="modal">No</button>
				      </div>
				    </div>
				  </div>
				  </div>
			</c:forEach>
        </tbody>
    </table>
        <script>
$(document).ready(function() {
$('#myPolicyTable').DataTable();
} );
</script>	
    </c:otherwise>
    </c:choose>	
    <br><br><br><br><br><br><br><br>
</section>
</html>