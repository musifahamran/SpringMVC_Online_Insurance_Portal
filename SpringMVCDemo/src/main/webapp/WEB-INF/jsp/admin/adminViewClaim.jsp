<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
</style>
<br>
<section class="table-responsive-sm">
<h4 class="display-5" align="center">Claim List</h4>
<br>
<table class="table table-striped table-hover center" style="width:80%;">
        <thead class="table-dark">
            <tr>
             	<th scope="col">#</th>
                <th scope="col">Customer Name</th>
                <th scope="col">Claim Type</th>
                <th scope="col">Description</th>
                <th scope="col">Review Claim</th>
            </tr>
        </thead>
        <tbody>
            <tr><td>1</td>
                <td>Sarah Baker</td>
                <td>School Insurace</td>
                <td>A primary school student broke his leg during a school field trip. Hospitalized since dd/mm/yy </td>
                <td><a href="viewPlan/${emp.id}">View</a></td>  
            </tr>
            <tr><td>2</td>
  				<td>Jim  Miller</td>
                <td>Travel Insurance</td>
                <td>Cancelled flight due to heavy rain</td>
                <td><a href="viewPlan/${emp.id}">View</a></td>  
            </tr>
        </tbody>
    </table>
</section>
<section>
<br><br><br><br><br><br>
<br><br><br><br><br><br>
</section>
</html>