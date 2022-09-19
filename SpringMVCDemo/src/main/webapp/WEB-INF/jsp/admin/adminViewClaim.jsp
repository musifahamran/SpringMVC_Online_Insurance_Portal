<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
          <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
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
<br>
<section class="table-responsive-sm" style="width:80%; margin:0 auto;">
<c:choose>
 <c:when test="${empty customerList}">
  <div class="card" align="center" style="width: 100%;">
	  <div class="card-body">
	    <h5 class="card-title">Welcome to the customer claims page!</h5>
	    <h6 class="card-subtitle mb-2 text-muted"></h6>
	    <p class="card-text">Here, you can view the claims made by customer and review them. However, it looks like there are no customers yet</p>
	  </div>
	</div>
 </c:when>
 <c:otherwise>	
 <br>
<h4 class="display-5" align="center">Claim List</h4>
<br>
<c:if test="${!empty updateMessage}">
				 <div class="alert  alert-primary alert-dismissible fade show" role="alert">
				 	<strong align="center">${updateMessage}</strong>
				 	<button type="button" class="btn-close" data-dismiss="alert" aria-label="Close">
				  </button>
				 </div>
				 </c:if>
<table id="claimTable" class="table table-striped table-hover center dataTable" data-page-length="3">
        <thead class="table-dark">
            <tr>
             	<th scope="col">#</th>
                <th scope="col">Customer Name</th>
                <th scope="col">Claim Type</th>
                <th scope="col">Description</th>
                <th scope="col">Claim Submit Date</th>
                <th scope="col">Claim Documents</th>
                <th scope="col">Claim Status</th>
                <th scope="col">Review Claim</th>
            </tr>
        </thead>
        <tbody>
           <c:forEach items="${customerList}" var="customer">
           <c:if test="${!empty customer.getClaim()}">
             <c:forEach items="${customer.getClaim()}" var="customerClaim">
             	<tr>
	            <td>${customerClaim.getId()}</td>
	            <td>${customer.getFname()} <% out.print(" "); %>${customer.getLname()}</td>
	            <td>${customerClaim.getType()} <%out.print("-");%> ${customerClaim.getClaim_policy()}</td>
           		<td>${customerClaim.getDescription()}</td>
           		<td>${customerClaim.getSubmitdate()}</td>
           		<td>
           		  <c:forEach items="${customerClaim.getClaimDocument()}" var="claimdocument">
           			${claimdocument.getName()}<br>
           			</c:forEach>
           		</td>
           		<td>${customerClaim.getClaimStatus()}</td>
           		<c:choose>
           		<c:when test="${customerClaim.getClaimStatus()=='Pending review' || customerClaim.getClaimStatus()=='In progress'}">
           			<td><a href="<c:url value='/reviewClaim/${customerClaim.getId()}'/>" class="btn btn-primary">Review</a></td>
           		</c:when>
           		<c:otherwise>
           		 <td><input class="btn btn-secondary" type="button" value="Review" disabled></td>
           		</c:otherwise>
           		</c:choose>
             </tr>
              </c:forEach>
              </c:if>
            </c:forEach>
        </tbody>
    </table>
        <script>
		$(document).ready(function() {
		$('#claimTable').DataTable();
		} );
		</script>
    </c:otherwise>
    </c:choose>
</section>
<section>
<br><br><br><br><br><br>
<br><br><br><br><br><br>
</section>
</html>