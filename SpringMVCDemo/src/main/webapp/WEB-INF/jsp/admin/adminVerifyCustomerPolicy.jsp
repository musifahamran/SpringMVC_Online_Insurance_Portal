<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<title>Check Customer Policy</title>
<style>
body{
background:#e4ffff;
}
</style>
<br>
<section class="table-responsive-sm" style="width:80%; margin:0 auto;">
<br>
<c:choose>
 <c:when test="${empty customerPolicies.getCustomerpolicy()}">	
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
    <h4 class="display-5" align="center">Customer Policy List</h4>
    <br>
     <table id="myPolicyTable" class="table table-striped table-hover center dataTable" data-page-length="4">
        <thead class="table-dark">
            <tr>
             <th scope="col">#</th>
                <th scope="col">Policy Name</th>
                <th scope="col">Type</th>
                 <th scope="col">Date of Purchase</th>
                 <th scope="col">End Date of Policy</th>
                 <th scope="col">Status</th>
                <th scope="col">Plan</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>
      <c:forEach items="${customerPolicies.getCustomerpolicy()}" var="policy">
				<tr>
				<td>${policy.getCustomerpolicy_id()}</td>
				<td>${policy.getPolicy().getName()}</td>
				<td>${policy.getPolicy().getPol_type_id()}</td>
				<td>${policy.getPurchaseDate()}</td>
				<td>${policy.getEndDate()}</td>
				<td>${policy.getActivePolicy()}</td>
				<td><a href="#plan_detail_${policy.getPolicyplan().getPlan_id()}" class="btn btn-light" data-toggle="modal" value="">${policy.getPolicyplan().getPlan_type()}</a></td>
				<c:choose>
				<c:when test="${policy.getActivePolicy() == 'Pending'}">
				<td><a href="#approve_${policy.getCustomerpolicy_id()}" class="btn btn-primary"  data-toggle="modal">Approve Purchase?</a></td>
				</c:when>
				 <c:otherwise>
				 <td>Approved</td>
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
				   
				  <div class="modal fade" id="approve_${policy.getCustomerpolicy_id()}" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
				  	<div class="modal-dialog modal-dialog-centered" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLongTitle">Approve Customer Purchase?</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				    <form method="post" action="submit/${policy.getCustomerpolicy_id()}">
				      <div class="modal-body">
					      <div class="container">
					      	<div class="row">
					      	<p>Would you approve customer purchase of this policy?</p>
					      	</div>
					      	<div class=row>
					      	<div class="form-check form-check-inline">
							  <input class="form-check-input" type="radio" name="policyApproval" id="inlineRadio1" value="Approved" />
							  <label class="form-check-label" for="inlineRadio1">Yes</label>
							</div>
							
							<div class="form-check form-check-inline">
							  <input class="form-check-input" type="radio" name="policyApproval" id="inlineRadio2" value="Reject" />
							  <label class="form-check-label" for="inlineRadio2">No</label>
							</div>
							
							<div class="form-check form-check-inline">
							  <input class="form-check-input" type="radio" name="policyApproval" id="inlineRadio3" value="Require Further Review"/>
							  <label class="form-check-label" for="inlineRadio3">Require further review</label>
							</div>
					      	 <hr>
					      	<div class="row">
					      	<p>Any Comments?</p>
					      	</div>
					      	<div class="row">
					      	<textarea name="comment" rows="5" cols="30"></textarea>
					      	</div>
					      </div>
				      </div>
				      <div class="modal-footer">
				       	<input type="submit" class="btn btn-primary" value="Submit Response" >
				        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
				      </div>
				    </div>
				    </form>
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
    <div class="container" style="text-align:center;">
    <a href="<c:url value="/view-customer" />" class="btn btn-secondary py-2" style="width:100px">Back</a>
    </div>	
    <br><br><br><br><br><br><br><br>
</section>

</html>