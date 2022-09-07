<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<title>Update Policy</title>
<link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<style>
.center {
  margin-left: auto;
  margin-right: auto;
}
</style>
<section class="table-responsive-sm">
<h4 class="display-5" align="center">Policy List</h4>
<br>
<table class="table table-striped table-hover center" style="width:80%; left-padding:200px;">
        <thead class="table-dark">
            <tr>
             	<th scope="col">#</th>
                <th scope="col">Policy Name</th>
                <th scope="col">Price</th>
                <th scope="col">Type</th>
                <th scope="col">Description</th>
                <th scope="col">Plans</th>
                <th scope="col">Edit</th>
            </tr>
        </thead>
        <tbody>
            <tr><td>1</td>
                <td>Hospital Care</td>
                <td>2100</td>
                <td>Health</td>
                <td>Taking care of your needs</td>
                   <td><a href="viewPlan/${emp.id}">View</a></td>  
                   <td><a href="editPolicy/${emp.id}">Edit</a></td>  
            </tr>
            <tr><td>2</td>
                <td>Health Shield</td>
                <td>2100</td>
                <td>Health</td>
                <td>Pay only $20 for any emergency care in Singapore.</td>
                   <td><a href="viewPlan/${emp.id}">View</a></td> 
                   <td><a href="editPolicy/${emp.id}">Edit</a></td>   
            </tr>
            <tr><td>3</td>
             	<td>Fixed Term</td>
                <td>3500</td>
                <td>Life</td>
                <td>Protection for your entire lifetime</td>
                   <td><a href="viewPlan/${emp.id}">View</a></td>  
                   <td><a href="editPolicy/${emp.id}">Edit</a></td>  
            </tr>
            <tr><td>4</td>
             	<td>Car Insurance</td>
                <td>3500</td>
                <td>Vehicle</td>
                <td>Protection your car today</td>
                   <td><a href="viewPlan/${emp.id}">View</a></td>  
                   <td><a href="editPolicy/${emp.id}">Edit</a></td>  
            </tr>
        </tbody>
    </table>
</section>
</html>