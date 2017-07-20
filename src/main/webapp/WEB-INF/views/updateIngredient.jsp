<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<jsp:include page="layouts/app.jsp"></jsp:include>
<div class = "container">
	<h1 align = "center">Update Ingredient Data</h1>
	
	<!-- Modal -->
	<div class = "modal">
		<!-- Modal content -->
		<div class = "modal-content">
			<div class = "modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
	          <h4 class="modal-title">Modal Header</h4>
			</div>
			<div class = "modal-body">
				<form action="update" method="post">
					<div class = "form-group">
			          <label for = "inputIngrediantId">Ingrediant Id : </label>
			          <input disabled type = "text" class = "form-control " id = "inputIngrediantId" placeholder = "Ingrediant Id" name = "ing_id" value = "${ingredient.id }">
			        </div>
			        <div class = "form-group">
			          <label for = "inputIngrediantName">Ingrediant Name : </label>
			          <input type = "text" class = "form-control" id = "inputIngrediantName" placeholder = "Ingrediant Name" name = "ing_name" value = "${ingredient.name }">
			        </div>
			        <div class = "form-group">
			          <label for = "inputCommonName" >Common Name : </label>
			          <input type = "text" class = "form-control" placeholder = "Common Name" id = "inputCommonName" name = "ing_common" value = "${ingredient.common }">
			        </div>
			
			        <div class = "form-group">
			          <label for = "inputScientificName">Scientific Name : </label>
			          <input id = "inputScientificName" type = "text" class = "form-control" placeholder = "Scientific Name" name = "ing_scientific" value = "${ingredient.scientific }">
			        </div>
			</div>
			<div class="modal-footer">
	          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	          <button type="button" class="btn btn-default" data-dismiss="modal">Save</button>
	        </div>
		</div>
				</form>
		</div>
</div>