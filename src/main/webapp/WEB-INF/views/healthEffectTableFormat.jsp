<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<jsp:include page="layouts/app.jsp"></jsp:include>

<form action="/healthTable" method = "get">
	<div class = "row">
		<div class = "col-md-12">
			<table class = "table-responsive">
				<table class = "table table-hover h4">
					<thead>
						<c:if test="${!empty HealthList }">
							<tr>
								<th>S. No.</th>
								<th>Ingredient Name</th>
								<th>Description</th>
								<th>Recommendation</th>
							</tr>
						</c:if>
					</thead>
				</table>
			</table>
		</div>
	</div>
</form>
</body>
</html>