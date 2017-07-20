<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<jsp:include page="layouts/app.jsp"></jsp:include>
<form action = "tableFormat" method = "get">
<div class="row">
  <div class="col-md-12">
    <div class="col-md-11"></div>
    <div class="col-md-1">
    	<a class = "btn btn-default" href = "http://localhost:8081/project/formProduct">ADD</a>
   	</div>
   </div>
   <div class="col-md-12">
   		<nav class = "navbar navbar-default navbar-fixed-left" id = "addProductTableFormatHere">
		<div class = "navbar-collapse collapse">
            <div class = "row">
            	<div class = "col-md-12">
            		<table class = "table-responsive">
		<table class = "table table-hover h4">
			<thead>
				<c:if test="${!empty productList}">
					<tr>
						<th>S. No.</th>
						<th>Product Name</th>
						<th>Brand</th>
						<th>Manufacturing Date</th>
						<th>Company Name</th>
						<th>Origin At</th>
						<th>Action</th>
					</tr>
					
				
			</thead>
				
			<tbody>
			<% int i=1; %>
				<c:forEach items="${productList}" var="product">
					<tr>
						<td><% out.print(i);i++; %></td>
						<td><c:out value ="${product.p_name }" /></td>
						<td><c:out value ="${product.p_brand }" /></td>
						<td><c:out value ="${product.manuf_date }" /></td>
						<td><c:out value ="${product.p_company }" /></td>
						<td><c:out value ="${product.origin_at }" /></td>
						<td> 
							<a class= "btn btn-default" href="edit?productP_id=${product.p_id}">Edit</a>	
						 	<a class= "btn btn-default" href="delete?productP_id=${product.p_id}">Delete</a>
						</td> 
					</tr>
				</c:forEach>
			</tbody>
				</c:if>
		</table>
	</table>
            	</div>
            </div>
        </div>
	</nav>
   </div>
</div>

	
	
	
</form>
</body>
</html>