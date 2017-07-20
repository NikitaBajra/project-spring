<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
  	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
  	<script src="${pageContext.request.contextPath}/resourcesbootstrap/js/jquery-3.2.1.min.js"></script>
  	<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
	<title>Add Product</title>
</head>
ProductEntity
/*public java.util.Set<IngredientEntity> getIngredientEntities() {
		return ingredientEntities;
	}
	public void setIngredientEntities(java.util.Set<IngredientEntity> ingredientEntities) {
		this.ingredientEntities = ingredientEntities;
	}*/
	
	
	/*@OneToMany(cascade= CascadeType.ALL)
	@JoinColumn(name = "product_id", referencedColumnName="product_id")
	private java.util.Set<IngredientEntity> ingredientEntities;
	*/
	
	/*public ProductEntity() {
		
	}*/
	
Ingredient Entity

	/*@ManyToOne
	@JoinColumn(name = "p_id")
	public ProductEntity getProductEntities() {
		return productEntities;
	}
	public void setProductEntities(ProductEntity productEntities) {
		this.productEntities = productEntities;
	}*/
	
ProductDAOIMpl
//Set<IngredientEntity> ingredientEntity = p.getIngredientEntities();
		
		if(null != p){
			session.delete(p);
		}
		
		/*for(IngredientEntity ingredientEn : ingredientEntity){
			session.delete(ingredientEn);
		}*/
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

ProductEntity productEntity = productDao.getProductById(pro.getP_id());
		if(productEntity != null){
			productEntity.setP_name(pro.getP_name());
			productEntity.setP_brand(pro.getP_brand());
			productEntity.setP_company(pro.getP_company());
			productEntity.setManuf_date(pro.getManuf_date());
			productEntity.setOrigin_at(pro.getOrigin_at());
			session.saveOrUpdate(productEntity);
		}
		
		logger.info("Product saved successfully, Product Details(updateProduct) = "+pro);

//ProductDAOImpl
@Override
	public void updateProduct(ProductEntity p) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		logger.info("Product saved successfully, Product Details(updateProduct) half = "+p);
		/*ProductEntity productEntity = (ProductEntity) session.load(ProductEntity.class, p.getP_id());
		
		
		productEntity.setP_name(p.getP_name());
		logger.info("Product saved successfully, Product Details(updateProduct) name = "+p);
		productEntity.setP_company(p.getP_company());
		logger.info("Product saved successfully, Product Details(updateProduct) company = "+p);
		productEntity.setP_brand(p.getP_brand());
		logger.info("Product saved successfully, Product Details(updateProduct) brand = "+p);
		productEntity.setManuf_date(p.getManuf_date());
		logger.info("Product saved successfully, Product Details(updateProduct) date = "+p);
		productEntity.setOrigin_at(p.getOrigin_at());
		logger.info("Product saved successfully, Product Details(updateProduct) origin = "+p);*/
		session.update(p);
		
		//System.out.println("applel " + p);
		
		//session.saveOrUpdate(p);
		
		logger.info("Product saved successfully, Product Details(updateProduct) = "+p);



@RequestMapping("/edit/{p_id}")
	public String displayUpdateProduct(@PathVariable("p_id") int id , Model model){
		System.out.println("hello"  + id);
		//ProductEntity pro = productService.getProductById(Integer.parseInt(id));
		model.addAttribute("product", this.productService.getProductById(id));
		model.addAttribute("listProduct", this.productService.listProduct());
		return "updateProduct";
	}


//project Controller
/*@RequestMapping("/edit/{p_id}")
	public String displayUpdateProduct(@PathVariable("p_id") int id , Model model){
		System.out.println("hello"  + id);
		//ProductEntity pro = productService.getProductById(Integer.parseInt(id));
		model.addAttribute("product", this.productService.getProductById(id));
		model.addAttribute("listProduct", this.productService.listProduct());
		return "updateProduct";
	}
*/
	
	/*public String displayUpdateProduct(@RequestParam("p_name") String name,
			@RequestParam("p_id") String id,
			@RequestParam("p_brand") String brand,
			@RequestParam("p_company") String company,
			@RequestParam("origin_at") String org,
			@RequestParam("manuf_date") String man){
		
		updateProduct();
			
		return "redirect:/product";
	}*/
	
	/*@RequestMapping(value = "/product" , method = RequestMethod.GET)
	public String listProduct(Map<String, Object> map)
	{
		map.put("productList", productService.listProduct());
		return "addProducts";
	}
	
	@RequestMapping(value = "/saveProduct" , method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") ProductEntity product , BindingResult result){
		productService.addProduct(product);
		return "redirect:/product";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String deleteProduct(@ModelAttribute("product") ProductEntity product , BindingResult result){
		productService.deleteProduct(product.getP_id());
		return "redirect:/product";
	}
	
	@RequestMapping(value = "/edit" , method = RequestMethod.POST)
	public ModelAndView editProduct(@ModelAttribute("product") ProductEntity product , BindingResult result){
		ProductEntity pro = productService.getProductById(product.getP_id());
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("product", pro);
		return new ModelAndView("updateProduct",model);
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updatingProduct(@ModelAttribute("product") ProductEntity product , BindingResult result){
		productService.updateProduct(product);
		return "redirect:/product";
	}
	
	
	
	
	@RequestMapping(value = "/productTable" )
	public String productTableView(@ModelAttribute("product") ProductEntity product ,Model model, Locale locale){
		logger.info("Welcome home! The client locale is {}.", locale);
		return "productTableFormat";
	}
	
	*/
}






<body>	 action="/productTable"
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
                <!-- <div class = "col-md-2"> -->
                  <ul class = "nav nav-pills navbar-default nav-justified">  
                    <li ><a onclick = "openPage('home')"><h3>Home</h3></a></li>
                    <li ><a onclick = "openPage('product')"><h3>Product</h3></a></li>
                    <li><a onclick = "openPage('ingrediants')"><h3>Ingrediant</h3></a></li>                  
                  </ul>
              	<div class = "col-md-12" id = "loadContent"></div>
          	  </div>
            </div>
          </div>           
    	</nav>
  </nav>
<div class="container">
  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" ></li>
      <li data-target="#myCarousel" data-slide-to="1"></li> 
      <li data-target="#myCarousel" data-slide-to="2"></li> 
       <li data-target="#myCarousel" data-slide-to="3"></li> 

</ol>

<script type="text/javascript">
	function my(){
		
	}
</script>
<div class="carousel-inner">
  <div class="item active">
    <a target="_blank" href="too.jpg">
    <img src="${pageContext.request.contextPath}/resources/bootstrap/img/too.jpg"   width="460" >

  </div>
  <div class="item">
    <a target="_blank" href="soda1.jpg">
    <img src="${pageContext.request.contextPath}/resources/bootstrap/img/soda1.jpg" width="460"  >
  </div>
  <div class="item">
    <a target="_blank" href="plate.jpg">
    <img src="${pageContext.request.contextPath}/resources/bootstrap/img/Plate.jpg" width="460"  >
  </div>  
  <div class="item">
    <a target="_blank" href="fruits.png">
    <img src="${pageContext.request.contextPath}/resources/bootstrap/img/fruits.png" width="460" >
  </div> 
</div>
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<script type="text/javascript"> 
    function openPage(page)
      {
        if(page=='home'){
          $('#loadContent').load('home.php');
        }
        else if(page == 'product')
        {         
          $('#loadContent').load('addProducts.jsp');
        }
        /*console.log('product');*/

        else if (page == "ingrediants") 
        {
          $('#loadContent').load('addIngredient.jsp');
        }
         else if (page == "effects") 
        {
          $('#loadContent').load('effects.php');
        }
      }
  </script>






	<!-- <button onclick = "myfun()">Click me </button>
<p id = "demo"></p>
	<div class="container">
	  <h2 align="center">Add Product</h2>
	  Trigger the modal with a button
	  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>

	  Modal
	  <div class="modal fade" id="myModal" role="dialog">
	    <div class="modal-dialog">
	    	
	      Modal content
	      <div class="modal-content">
	        <div class="modal-header">
	          <button type="button" class="close" data-dismiss="modal">&times;</button>
	          <h4 class="modal-title">Modal Header</h4>
	        </div>
	        <div class="modal-body">
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
		            <input type = "text" class = "form-control" id = "inputManufacturingDate" 
		            placeholder = "dd/mm/yyyy">
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
          
	        </form>
	    </div>
	  </div>
	
	</div>
	
	<script type="text/javascript">
		function myfun(){
			document.getElementById("demo").innerHTML = "Hello World";
		}
	</script> -->
</body>
</html>