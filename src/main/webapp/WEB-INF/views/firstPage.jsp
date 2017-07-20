<jsp:include page="layouts/app.jsp"></jsp:include>
<%-- <%@ include file = "layouts/app.jsp" %> --%>
<div class="container" id ="loadContent">
  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" ></li>
      <li data-target="#myCarousel" data-slide-to="1"></li> 
      <li data-target="#myCarousel" data-slide-to="2"></li> 
       <li data-target="#myCarousel" data-slide-to="3"></li> 

</ol>
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
  /* console.log('kkyy'); */
    /* function openPage(page)
      {
	  	
        if(page=='home'){
        	console.log("home");
           $('#loadContent').load('http://localhost:8080/project/first #myCarousel'); 
        }
        
        else if(page == 'product')
        {    
        	console.log("product");
           $('#loadContent').load('http://localhost:8080/project/productTableFormat #addProductTableFormatHere'); 
        }

         else if (page == "ingrediants") 
        {
          $('#loadContent').load('http://localhost:8080/project/ingredient #addIngredientTableFormatHere');
        }
         else if (page == "effects") 
        {
          $('#loadContent').load('effects.php');
        } */
        
         /* else if (page == 'addingProduct')
        {
        	 $('#loadContent').load('http://localhost:8080/project/product #addProductHere');
        } */
 	 }  
  </script>
