<jsp:include page="layouts/app.jsp"></jsp:include>

	<div class="container" id = "addProductHere">
	  
	  <!-- Trigger the modal with a button -->
	  <!-- Modal -->
	    <div class="modal-dialog">
	    
	      <!-- Modal content-->
	      <div class="modal-content">
	        <div class="modal-header">
	          
	          <h1 class="modal-title" align = "center">Add Product</h1>
	        </div>
	        <div class="modal-body">
	          <form method = "post" model = "products" commandName="product" action="saveProduct">
	         	<div class = "form-group">
          			
          			<input type = "hidden" class = "form-control " id = "inputProductId" placeholder = "Product Id" name = "p_id" value = "${product.p_id}">
        		</div>

		        <div class = "form-group">
		          <label for = "inputProductName">Product Name : </label>
		          <input type = "text" class = "form-control" id = "inputProductName" 
		          placeholder = "Product Name" name = "p_name" value = "${product.name }">
		        </div>

		        <div class = "form-group">
		          <label for = "inputBrand">Brand : </label>
		          <input type = "text" class = "form-control" id = "inputBrand" 
		          placeholder = "Product Brand Name" name = "p_brand" value = "${product.p_brand }">
		        </div>
			
		        <div class = "form-group">
		          <label for = "inputManufacturingDate">Manufacturing Date : </label>
		            <input type = "text" class = "form-control" id = "inputManufacturingDate" 
		            placeholder = "dd/mm/yyyy" name = "manuf_date" value = "${product.manuf_date}">
		        </div>

		        <div class = "form-group">
		          <label for = "inputCompanyName">Company : </label>
		            <input type = "text" class = "form-control" id = "inputCompanyName" 
		            placeholder = "Company name" name = "p_company" value = "${product.p_company }">
		        </div>

	        	<div class = "form-group">
		          <label for = "inputOriginAt">Origin At : </label>
		          <input type = "text" class = "form-control" id = "inputOriginAt" placeholder = "Origin" name = "origin_at" value = "${product.origin_at }">
		        </div>
    		</div>
	        <div class="modal-footer">
	          <!-- <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	          <button type="button" class="btn btn-default" data-dismiss="modal">Save</button> -->
	          
	          <input type = "submit" value = "Submit">
	        </div>
          </div>
	        </form>
	    </div>
	  </div>
</body>
</html>