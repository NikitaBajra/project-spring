<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<jsp:include page="layouts/app.jsp"></jsp:include>

	<div class="container" id = "addIngredientHere">
	  <!-- Trigger the modal with a button -->
	  <!-- Modal -->
	    <div class="modal-dialog">
	      <!-- Modal content-->
	      <div class="modal-content">
	        <div class="modal-header">
	          
	          <h1 class="modal-title" align="center">Add Ingredient</h1>
	        </div>
	        <div class="modal-body">
	          <form action = "saveIngredient" method = "post">
      			<div class = "form-group">
		          
		        <!--   <input type ="hidden" class = "form-control " name = "ing_id"> -->
		        </div>
		        <div class = "form-group">
		          <label for = "inputIngrediantName">Ingrediant Name : </label>
		          <input type = "text" class = "form-control" id = "inputIngrediantName" 
		          placeholder = "Ingrediant Name" name = "ing_name" value = "${ingredient.ing_name }">
		        </div>
		        <div class = "form-group">
		          <label for = "inputCommonName" >Common Name : </label>
		          <input type = "text" class = "form-control" placeholder = "Common Name" id = "inputCommonName"
		           name = "ing_common" value = "${ingredient.ing_common }">
		        </div>
		
		        <div class = "form-group">
		          <label for = "inputScientificName">Scientific Name : </label>
		          <input id = "inputScientificName" type = "text" class = "form-control" 
		          placeholder = "Scientific Name" name = "ing_scientific" value = "${ingredient.ing_scientific }">
		        </div>
		       
		        <div class = "form-group">
		          <label for = "inputProductName">Product Name : </label><br>
		         <select name = "productID" id = "inputProductName"> 
					<c:forEach items="${productList}" var="product">
		          		<option value = "${product.p_id }">${product.p_name}</option>
		          	</c:forEach>
		         </select> 
		        </div>
		        
		        <div class="modal-footer">
	        	  <input type = "submit" value = "Submit">
	        	</div>
	        </form>
    		</div>
	       
	    </div>
	  </div>
	  </div>
</body>
</html>