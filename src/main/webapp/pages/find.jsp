<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

<div align="center">
<font ><h1><b>PRODUCT MANAGEMENT SYSTEM</b></h1> </font>
          
           
</div>
            <nav align="center">
                <font><a class="btn btn-primary" href="/home" role="button">Home</a></font> &nbsp;&nbsp;
                 <font><a class="btn btn-primary" href="/save" role="button">Save Product Details</a></font> &nbsp;&nbsp;
                <font><a class="btn btn-primary" href="/list" role="button">List of Products</a></font> &nbsp;&nbsp;
                <font><a class="btn btn-primary" href="/find" role="button">Find A Products</a></font> &nbsp;&nbsp;
                <font><a class="btn btn-primary" href="/update" role="button">Update Product Details</a></font> &nbsp;&nbsp;
                <font><a class="btn btn-primary" href="/delete" role="button">Delete Product Details</a></font> &nbsp;&nbsp;
                
            </nav>
<br><br>

<h3 align="center"> <b>List of Product</b> </h3>

<div align="center">
<table  border="1" class="table table-dark table-striped-columns">

<tr>
<th>ID</th>
  <th>NAME</th>
  <th>TYPE</th>
  <th>PLACE</th>
  <th>WARRANTY</th>
  	
</tr>

<c:forEach items="${find}" var="e">

  <tr>
  <td>${e.id}</td>
   <td>${e.name}</td>
   <td>${e.type}</td>
   <td>${e.place}</td>
   <td>${e.warranty}</td>
</tr>
</c:forEach>



</table>
</div>
</body>
</html>