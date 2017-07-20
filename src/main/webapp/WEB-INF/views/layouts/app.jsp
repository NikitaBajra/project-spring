 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/bootstrap/js/jquery-3.2.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
	<link rel = "stylesheet" type = "text/css" href = "${pageContext.request.contextPath}/resources/bootstrap/css/styling.css">
	<title>View Page</title>
</head>
<body>
	<p>Precaution before side effects</p>
    <!-- Search button -->
    
	 <form class="navbar-form navbar-center">
	  <div class="input-group">
	    <input type="text" class="orm-control" placeholder="Search products">
	    <div class="input-group-btn">
	      <button class="btn btn-default" type="submit">
	        <i class="glyphicon glyphicon-search"></i>
	   	</div> 
	   </div>
	  </form>
			<!-- icon collapse -->
		<nav class = "navbar navbar-default navbar-fixed-left">
			<div class ="container">
				<div class = "navbar-header">
					<button type = "button" class = "navbar-toggle" data-toggle = "collapse" data-target =".navbar-collapse">
						<span class = "icon-bar"></span>
						<span class = "icon-bar"></span>
						<span class = "icon-bar"></span>				
					</button>
				</div>
			</div>
			<!-- <form> -->
           	<!-- SCROLL  <div class="container-fluid" style="height:1000px"> -->
          	<div class = "navbar-collapse collapse">
            	<div class = "row">
              		<div class = "col-md-12">
  	                	<ul class = "nav nav-pills navbar-default nav-justified">
  	                		
                    		<li ><a href = "http://localhost:8081/project/"><h3>Home</h3></a></li>
                    		<!-- <li ><a href="product" ><h3>Product</h3></a></li> -->
                    		<li >
                    			<a href = "http://localhost:8081/project/product"><h3>Product</h3></a>
                    		</li>
                    		<li><a href = "http://localhost:8081/project/ingredientTable"><h3>Ingrediant</h3></a></li>
                   		</ul>
						
              		</div>
           		</div>
          	</div>                                                       
    	</nav>
    	
    	
    	
	