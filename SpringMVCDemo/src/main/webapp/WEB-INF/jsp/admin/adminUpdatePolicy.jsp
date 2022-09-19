<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<title>Update Policy</title>
<link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<style>
.center {
  margin-left: auto;
  margin-right: auto;
}
body{
background: linear-gradient(331deg, rgba(241,234,255,0.9532855378479517) 44%, rgba(228,255,255,1) 93%);
}
</style>
<section class="table-responsive-sm" style="width:80%; margin:0 auto;">
<br><br><br>
<h4 class="display-5" align="center">Policy List</h4>
<c:if test="${!empty updateMessage}">
				 <div class="alert  alert-primary alert-dismissible fade show" role="alert">
				 	<strong align="center">${updateMessage}</strong>
				 	<button type="button" class="btn-close" data-dismiss="alert" aria-label="Close">
				  </button>
				 </div>
				 </c:if>
<br>
<table data-order='[[ 0, "asc" ]]' id="policyTable" class="table table-striped table-hover center dataTable" data-page-length="4">
        <thead class="table-dark">
            <tr>
             	<th class="sorting sorting_asc" scope="col">#</th>
                <th class="sorting" scope="col">Policy Name</th>
                <th scope="col">Price</th>
                <th scope="col">Type</th>
                <th scope="col">Description</th>
                <th scope="col">Plans</th>
                <th scope="col">Edit</th>
                <th scope="col">Delete</th>
            </tr>
        </thead>
        <tbody>
        <c:if test="${!empty policyList}">
           <c:forEach items="${policyList}" var="policy">
				<tr>
				<td>${policy.getPolicy_id()}</td>
				<td>${policy.getName()}</td>
				<td>${policy.getPrice()}</td>
				<td>${policy.getPol_type_id()}</td>
				<td>${policy.getDescription()}</td>
				<td><a href="#planModal_${policy.getPolicy_id()}" id="${policy.getPolicy_id()}" class="btn btn-secondary" data-toggle="modal">View</a></td>
				<td><a href="<c:url value='/editPolicy/${policy.getPolicy_id()}'/>" class="btn btn-primary">Edit</a></td>
				<td><a href="#deleteModal_${policy.getPolicy_id()}" id="${policy.getPolicy_id()}" class="btn btn-danger" data-toggle="modal">Delete</a></td>
				</tr>
		    <div class="modal fade" id="planModal_${policy.getPolicy_id()}" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
				   <div class="modal-dialog modal-dialog-centered" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLongTitle">Policy Plan</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				     
				      <div class="modal-body">
				      <div class="container">
					      <div class="row">
						      <div class="col">
						      </div>
						      <div class="col">
						      <p>Basic</p></div>
						      <div class="col">
						      <p>Premium</p></div>
					      </div>
					      <hr>
					      <div class="row">
						      <div class="col"><p>Rate</p>
						      </div>
						      <div class="col">
						      <p>${policy.getPlan().get(0).getRate()}</p></div>
						      <div class="col">
						      <p>${policy.getPlan().get(1).getRate()}</p></div>
					      </div>
					       <div class="row">
						      <div class="col"><p>Coverage</p>
						      </div>
						      <div class="col">
						      <p>${policy.getPlan().get(0).getCoverage()}</p></div>
						      <div class="col">
						      <p>${policy.getPlan().get(1).getCoverage()}</p></div>
					      </div>
					       <div class="row">
						      <div class="col"><p>Duration</p>
						      </div>
						      <div class="col">
						      <p>${policy.getPlan().get(0).getDuration()}</p></div>
						      <div class="col">
						      <p>${policy.getPlan().get(1).getDuration()}</p></div>
					      </div>
					       <div class="row">
						      <div class="col"><p>Additional Charge</p>
						      </div>
						      <div class="col">
						      <p>${policy.getPlan().get(0).getAdditional_charge()}</p></div>
						      <div class="col">
						      <p>${policy.getPlan().get(1).getAdditional_charge()}</p></div>
					      </div>
				      </div>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
				      </div>
				    </div>
				  </div>
				  </div>
		  <div class="modal fade" id="deleteModal_${policy.getPolicy_id()}" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
				   <form action="deletePolicy/${policy.getPolicy_id()}" method="post" >
				   <div class="modal-dialog modal-dialog-centered" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLongTitle">Confirm Delete</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				     
				      <div class="modal-body">
				      <input type="hidden" id="linkId" />
				        <p>Are you sure you want to delete this policy?<p>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button>
				        <input type="submit" class="btn btn-danger" value="Delete"></button>
				      </div>
				    </div>
				  </div>
				  </form>
				</div>
			</c:forEach>
			</c:if>
        </tbody>
    </table>
    <script>
$(document).ready(function() {
$('#policyTable').DataTable();
} );
</script>			
</section>
<section>
<br><br><br><br>
</section>
</html>