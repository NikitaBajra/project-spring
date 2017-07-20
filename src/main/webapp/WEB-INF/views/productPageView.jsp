<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="uft-8">
  	<meta name="viewport" content="width=device-width,initial-scale=1">
  	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
  	<script src="${pageContext.request.contextPath}/resources/bootstrap/js/jquery-3.2.1.min.js"></script>
  	<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
  	<link rel = "stylesheet" type = "text/css" href = "${pageContext.request.contextPath}/resources/bootstrap/css/productStyle.css">
	<title>Product</title>
</head>
<body>
	<h1>List Of Products</h1>
    <br>
   
<div class="row">
  <div class="col-md-12">
    <div class="col-md-11"></div>
    <div class="col-md-1">
      <!-- <a href="sadd.php"></a> -->
      <button class="btn btn-primary btn-block" type="button"  class="btn btn-default btn-block"  data-toggle="modal" data-target="#myModal">ADD
        <span class="glyphicon glyphicon-plus">
        </span></button>
 
         <!-- Modal -->
  <div id="myModal" role="dialog" class="modal fade">
    <div class="modal-dialog">

       <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Add Products</h4>
        </div>
       <!--  <div class="modal-body">
          <table>
      <tr><td><h4>product name</h4></td><td><input type="text" name="p_name" ></td></tr>
      <tr><td><h4>product company</h4></td><td><input type="text" name="p_company"></td></tr>
      <tr><td><h4>product brand</h4></td><td><input type="text" name="p_brand"></td></tr>
      <tr><td><h4>manf date</h4></td><td><input type="text" name="manf_date"></td></tr>
      <tr><td><h4>origin at</h4></td><td><input type="text" name="origin_at"></td></tr>
      
    </table>
    </div> -->

    <div class = "modal-body">
      <form action = "#" method = "post">
        <div class = "form-group">
          <label for = "inputProductId">Product Id : </label>
          <input disabled type = "text" class = "form-control " id = "inputProductId" placeholder = "Product Id">
        </div>

        <div class = "form-group">
          <label for = "inputProductName">Product Name : </label>
          <input type = "text" class = "form-control" id = "inputProductName" placeholder = "Product Name">
        </div>

        <div class = "form-group">
          <label for = "inputBrand">Brand : </label>
          <input type = "text" class = "form-control" id = "inputBrand" placeholder = "Product Brand Name">
        </div>

        <div class = "form-group">
          <label for = "inputManufacturingDate">Manufacturing Date : </label>
            <input type = "text" class = "form-control" id = "inputManufacturingDate" placeholder = "dd/mm/yyyy">
        </div>

        <div class = "form-group">
          <label for = "inputCompanyName">Company : </label>
            <input type = "text" class = "form-control" id = "inputCompanyName" placeholder = "Company name">
        </div>

        <div class = "form-group">
          <label for = "inputOriginAt">Origin At : </label>
          <input type = "text" class = "form-control" id = "inputOriginAt" placeholder = "Origin">
        </div>
      
    </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">Save</button>
        </div>
        </div>
          </div>
      </div>
    </div>
  </div>
<div class="container">
       
  <table class="table table-hover">
    <thead>
      <tr>
        <th><h4>Product ID<h4></th>
        <th><h4>Product Name</h4></th>
        <th><h4>Product Brand</h4></th>
        <th><h4>Product Company</h4></th>
        <th><h4>Manufacturing Date</h4></th>
        <th><h4>origin at</h4></th>
        <th><h4>Actions</h4></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>Nesscafe</td>
        <td>Coffee</td>
        <td>Nebsico</td>
        <td>2017/12/12</td>
        <td>USA</td>
        <td><button><h5>EDIT</h5></button></td><td><button><h6>DELETE</h6></button></td>
      </tr>
      </tr>
      <tr>
        <td>2</td>
        <td>lays</td>
        <td>Chips</td>
        <td>frito-lay</td>
        <td>2017/06/05</td>
        <td>USA</td>
        <td><button><h5>EDIT</h5></button></td><td><button><h6>DELETE</h6></button></td>
      </tr>
      </tr>
      <tr>
        <td>3</td>
        <td>oreo</td>
        <td>biscuit</td>
        <td>nebisco</td>
        <td>2017/06/11</td>
        <td>USA</td>
        <td><button><h5>EDIT</h5></button></td><td><button><h6>DELETE</h6></button></td>
      </tr>
      </tr>
     
    </tbody>
  </table>
</div>
<!-- <a href="first.html"> <button type="button" class="btn btn-primary btn-md">Back</button></a>
 -->
<div class="text-center">
<ul class="pagination">
  <li><a href="first.php">1</a></li>
  <li ><a href="home.php">2</a></li>
  <li class="active"><a href="product.php">3</a></li>
  <li><a href="ingrediants.php">4</a></li>
  <li><a href="effects.php">5</a></li>
</ul>
</div>
</body>
</html>