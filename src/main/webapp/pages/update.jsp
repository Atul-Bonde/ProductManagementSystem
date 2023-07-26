<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     
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
                <font><a class="btn btn-primary" href="/update" role="button">Update Product Details</a></font> &nbsp;&nbsp;
                <font><a class="btn btn-primary" href="/delete" role="button">Delete Product Details</a></font> &nbsp;&nbsp;
                
            </nav>
<br><br>

<h2 align="center">Product Updation Form</h2>
	<br>

	<div align="center">
		<form action="/updateproduct">

           <label for="id" style="color: black"> <b>Product Id</b></label>
			<input type="text" name="id" placeholder="Enter Product Id"
				required><br> <br>

			<label for="name" style="color: black"> <b>Product Name</b></label>
			<input type="text" name="name" placeholder="Enter Product Name"
				required><br> <br>
				 <label for="type"style="color: black"> <b>Prouct Type</b></label> 
				 <input type="text" name="type" placeholder="Enter Product Type" required><br><br>
				 
				 <label for="place"style="color: black"> <b>Prouct Place</b></label> 
				 <input type="text" name="place" placeholder="Enter Product Place" required><br>
				 
			<br> <label for="warranty" style="color: black"> <b>Product Warranty</b></label>
			<input type="text" name="warranty"placeholder="Enter Product Warranty" required><br> <br>
				
			

			<button type="submit" style="color: black">Submit</button>

		</form>
	</div>

</body>
</html>