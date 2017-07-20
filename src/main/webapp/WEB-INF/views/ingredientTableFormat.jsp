<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<jsp:include page="layouts/app.jsp"></jsp:include>
<form action = "ingredientTable" method = "get">
<div class="row">
  <div class="col-md-12">
    <div class="col-md-11"></div>
    <div class="col-md-1">
    	<a class = "btn btn-default" href = "http://localhost:8081/project/formIngredient">ADD</a>
      	
     </div>
   </div>
   <div class="col-md-12">
   		<nav class = "navbar navbar-default navbar-fixed-left" id = "addIngredientTableFormatHere">
		<div class = "navbar-collapse collapse">
            <div class = "row">
            	<div class = "col-md-12">
            		<table class = "table-responsive">
		<table class = "table table-hover h4">
			<thead>
				<c:if test="${!empty ingredientList }">
					<tr>
						<th>S. No.</th>
						<th>Product Name</th>
						<th>Ingredient Name</th>
						<th>Common Name</th>
						<th>Scientific Name</th>						
						<th>Action</th>
					</tr>
				</c:if>
			</thead>

			<tbody>
				<% int i = 1 ; %>
				<c:forEach items = "${ingredientList }" var = "ingredient">
					<tr>
						<td><% out.print(i); i++ ; %></td>
						<td><c:out value="${product.p_name }"></c:out></td>
						<td><c:out value="${ingredient.ing_name }"></c:out></td>
						<td><c:out value="${ingredient.ing_common }"></c:out></td>
						<td><c:out value="${ingredient.ing_scientific }"></c:out></td>
						<td>
							<a class= "btn btn-default" href="editIngredient?ingredientIng_id=${ingredient.ing_id}">Edit</a>	
						 	<a class= "btn btn-default" href="deleteIngredient?ingredientIng_id=${ingredient.ing_id}">Delete</a>
							<a class= "btn btn-default" href="effect?ingredientIng_id=${ingredient.ing_id}">Health Effect</a>
						</td>
					</tr>
					
				</c:forEach>
			</tbody>
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