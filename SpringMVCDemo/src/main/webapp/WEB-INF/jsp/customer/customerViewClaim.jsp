<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Policy</title>
<link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<style>
.center {
  margin-left: auto;
  margin-right: auto;
}

</style>
<br>
<section class="table-responsive-sm" style="width:80%; margin:0 auto;">
<br>
    <c:choose>
 <c:when test="${empty customerObj.getClaim()}">	
	 <div class="card" align="center" style="width: 100%;">
	  <div class="card-body">
	    <h5 class="card-title">Welcome to your claims page! Here you can view all the claims you have made!</h5>
	    <h6 class="card-subtitle mb-2 text-muted"></h6>
	    <p class="card-text">However, it looks like you have no claims made. Click on the below link to make a claim..</p>
	    <a href="<c:url value="/make-claim" />" class="card-link">Go to Claim Application</a>
	  </div>
	</div>
	<br>
    </c:when>
    <c:otherwise>
    <h4 class="display-5" align="center">My Claim</h4>
    <br>
    <table id="myClaimTable"class="table table-striped table-hover center dataTable" data-page-length="4">
        <thead class="table-dark">
            <tr>
           
                <th scope="col">Claim</th>
                <th scope="col">Description</th>
                <th scope="col">Date of Incident</th>
                <th scope="col">Date of Claim made</th>
                 <th scope="col">Documents</th>
                <th scope="col">Approved?</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>
           <c:forEach items="${customerObj.getClaim()}" var="claim">
           	<tr>
           		<td>${claim.getType()} <%out.print("-");%> ${claim.getClaim_policy()}</td>
           		<td>${claim.getDescription()}</td>
           		<td>${claim.getIncidentDate()}</td>
           		<td>${claim.getSubmitdate()}</td>
           		<td>
           		 <c:forEach items="${claim.getClaimDocument()}" var="file">
           		 ${file.getName()}<br>
           		 </c:forEach>
           		 </td>
           		 <td>${claim.getClaimStatus()}</td>
           		 <c:choose>
           		  <c:when test="${claim.getClaimStatus() == 'In progress'}">
           		 <td><a href="editClaim/${claim.getId()}" class="btn btn-primary">Edit</a></td>
           		 </c:when>
           		 <c:otherwise>
           		 <td><input class="btn btn-secondary" type="button" value="Edit" disabled></td>
           		 </c:otherwise>
           		 </c:choose>
           		
			</tr>
			</c:forEach>
        </tbody>
    </table>
		<script>
		$(document).ready(function() {
		$('#myClaimTable').DataTable();
		} );
		</script>	
    </c:otherwise>
    </c:choose>	
     <div class="toast" id="myToast" style=" background-color:#ffe9ec;position: absolute; top: 100px; left: 40%;" data-delay="5000">
				    <div class="toast-header">
				        <strong class="me-auto">${successMessageHeader}</strong>
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
</section>
<section>
<br><br><br><br><br><br>
<br><br><br><br><br><br>
</section>
</html>