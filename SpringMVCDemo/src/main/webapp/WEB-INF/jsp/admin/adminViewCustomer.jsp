<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<title>View Customer</title>
<link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
<link href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap4.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<style>
.center {
  margin-left: auto;
  margin-right: auto;
}
body{
background: linear-gradient(331deg, rgba(241,234,255,0.9084676106770834) 44%, rgba(228,255,255,1) 93%);
}
</style>
<br>
<section class="table-responsive-sm" style="width:80%; margin:0 auto;">
<br>
<h4 class="display-5" align="center">Customer List</h4>
<c:if test="${!empty updateMessage}">
				 <div class="alert  alert-primary alert-dismissible fade show" role="alert">
				 	<strong align="center">${updateMessage}</strong>
				 	<button type="button" class="btn-close" data-dismiss="alert" aria-label="Close">
				  </button>
				 </div>
				 </c:if>
<br>
<table id="customerTable"class="table table-striped table-hover center dataTable" data-page-length="5">
        <thead class="table-dark" align="center">
            <tr>
             	<th scope="col">Customer ID</th>
                <th scope="col">Customer Name</th>
                <th scope="col">Email</th>
            	<th scope="col">Account Type</th>
                <th scope="col">View Policy</th>
                 <th scope="col" >Remove Customer</th>
            </tr>
        </thead>
        <tbody align="center">
     	 <c:if test="${!empty customerList}">
           <c:forEach items="${customerList}" var="customer">
				<tr>
					<td>${customer.getId()}</td>
					<td>${customer.getFname()}<%out.print(" ");%>${customer.getLname()}</td>
					<td>${customer.getEmail()}</td>
					<td>${customer.getCustomerType()}</td>
					<td><a href="#viewPolicyModal_${customer.getId()}" class="btn btn-primary mr-4" id="${customer.getId()}" data-toggle="modal"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
					<td><a href="#deleteModal_${customer.getId()}" id="${customer.getId()}" class="btn btn-danger" data-toggle="modal"><span><i class="fa fa-trash" aria-hidden="true"></i></span></a></td>
				</tr>
					
				<div class="modal fade" id="viewPolicyModal_${customer.getId()}" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
				   <div class="modal-dialog modal-dialog-centered" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLongTitle">Owned Policy</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				     
				      <div class="modal-body">
				      <div class="container">
				       <c:if test="${empty customer.getCustomerpolicy()}">
				       <p>Customer has not purchased any policies</p>
				       </c:if>
				       <c:if test="${!empty customer.getCustomerpolicy()}">
				        <div class="row">
				   		  <div class = "col">
	        						<h6>Policy Name</h6>
	        						</div>
	        						<div class = "col">
	        						<h6>Policy Plan</h6>
	        						</div>
	        						<div class = "col">
	        						<h6>Approval Status</h6>
	        						</div>
				   		  </div>
				   		  <hr>
				   		  <c:forEach items="${customer.getCustomerpolicy()}" var="customerPolicy">
        						<div class = "row">
	        					<div class = "col">
	        						<p>${customerPolicy.getPolicy().getName()}</p>
	        						</div>
	        						<div class = "col">
	        						<p>${customerPolicy.getPolicyplan().getPlan_type()}</p>
	        						</div>
	        						<div class = "col">
	        						<p>${customerPolicy.getActivePolicy()}</p>
	        						</div>
        						</div>
        						
				   		  </c:forEach>
				   		  </c:if>
				   		</div>	
				      </div>
				      <div class="modal-footer">
				       <c:if test="${!empty customer.getCustomerpolicy()}">
				      	<form action="approve-policy/${customer.getId()}" method="post" >
				      	<input type="submit" class="btn btn-success" value="Check Pending Policy">
				      	</form>
				       </c:if>
				        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
				      </div>
				    </div>
				  </div>
				  </div>
				  <div class="modal fade" id="deleteModal_${customer.getId()}" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
				   <form action="deleteCustomer/${customer.getId()}" method="post" >
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
				        <p>Are you sure you want to delete this customer?<p>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button>
				        <input type="submit" class="btn btn-danger" value="Delete">
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
$('#customerTable').DataTable();
} );
</script>
</section>
<section>
<br><br><br><br><br><br><br>
</section>
</html>