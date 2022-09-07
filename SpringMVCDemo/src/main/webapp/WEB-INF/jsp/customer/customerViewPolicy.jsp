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
<br>
<section class="table-responsive-sm">
<h4 class="display-5" align="center">Policy List</h4>
<br>
<table class="table table-striped table-hover center" style="width:80%; left-padding:200px;">
        <thead class="table-dark">
            <tr>
             	<th scope="col">#</th>
                <th scope="col">Policy Name</th>
                <th scope="col">Type</th>
                 <th scope="col">Date of Purchase</th>
                 <th scope="col">Date of Renewal</th>
                <th scope="col">Plans</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>
            <tr><td>1</td>
                <td>Hospital Care</td>
                <td>Health</td>
                   <td>29-AUG-2021</td>
                   <td>29-AUG-2023</td>
                 <td><a href="viewPlan/${emp.id}">Premium</a></td>
                 <td><a href="viewPlan/${emp.id}">Edit</a></td>  
            </tr>
            <tr><td>2</td>
                <td>Health Shield</td>
                <td>Health</td>
                   <td>17-JUN-2022</td>
                   <td>17-JUN-2023</td>
                    <td><a href="viewPlan/${emp.id}">Basic</a></td> 
                    <td><a href="viewPlan/${emp.id}">Edit</a></td> 
            </tr>
            <tr><td>3</td>
             	<td>Car Insurance</td>
                <td>Vehicle</td>
                   <td>1-SEP-2022</td>  
                    <td>1-SEP-2024</td>  
                <td><a href="viewPlan/${emp.id}">Basic</a></td>
                <td><a href="viewPlan/${emp.id}">Edit</a></td> 
            </tr>
        </tbody>
    </table>
</section>
<section>
<br><br><br><br><br><br><br><br>
</section>
</html>