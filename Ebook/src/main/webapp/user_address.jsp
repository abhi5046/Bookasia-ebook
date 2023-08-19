<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Edit Address</title>
<%@include file="CSS/allCss.jsp" %>
</head>
<body style="background-color:#f0f1f2;">
<!-- navbar strats -->
<%@include file="CSS/navbar.jsp" %>
<!-- navbar ends -->

<div class="container p-4">
		<div class="row p-3">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body ">
					<h3 class="text-center text-success">Add Address</h3>
					<form action="">
					<div class="form-row">
					<div class="form-group col-md-6">
		             <label for="inputPassword4">Adress</label>
				      <input type="text" class="form-control" id="inputPassword4" >
					</div>
					
					 <div class="form-group col-md-6">
		               <label for="inputEmail4">City</label>
						<input type="text" class="form-control" id="inputEmail4" >
					 </div>
					 
					<div class="form-group col-md-6">
			           <label for="inputPassword4">State</label>
				       <input type="text" class="form-control" id="inputPassword4" >
					 </div>
					 
					 <div class="form-group col-md-4">
			           <label for="inputPassword4">Pin Code</label>
				       <input type="text" class="form-control" id="inputPassword4" >
					 </div>
					 
					 </div>
					 
					 
					 <div class="text-center">
					 <button class="btn btn-dark">Add Address</button>
					 </div>
					
					</form>
					</div>
				</div>
			</div>
		</div>
</div>
<%-- <div class="mt-5">
<!-- footer -->
<%@include file="CSS/footer.jsp" %>
<!-- footer end -->	
</div> --%>				
</body>
</html>