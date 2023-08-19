<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Profile</title>
<%@include file="CSS/allCss.jsp" %>
</head>
<body style="background-color:#f0f1f2;">
<!-- navbar strats -->
<%@include file="CSS/navbar.jsp" %>
<!-- navbar ends -->

<div class="container p-4">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body ">
					
						<h4 class="text-center text-info p-1">Edit Profile</h4>
						
						    <c:if test="${not empty failedMsg }">
					        <h5 class="text-center text-danger">${failedMsg}</h5>
					        <c:remove var="failedMsg" scope="session" />
					        </c:if>
					        
					        <c:if test="${not empty succMsg }">
					        <h5 class="text-center text-success">${succMsg}</h5>
					        <c:remove var="succMsg" scope="session" />
					        </c:if>
						
						<form action="update_profile" method="post">
						<input type="hidden" value="${userobj.id }" name="id">
						  <div class="form-group">
						    <label for="exampleInputEmail1"> Name</label>
						    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter name" required="required" name="name" value="${userobj.name }">
						   
						  </div>
						  
						  <div class="form-group">
						    <label for="exampleInputEmail1">Email address</label>
						    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required="required" name="email" value="${userobj.email }">
						   
						  </div>
						  
						  <div class="form-group">
						    <label for="exampleInputEmail1">Phone Number</label>
						    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Phone Number" required="required" name="phone" value="${userobj.phone }">
						   
						  </div>
						  
						  
						  <div class="form-group">
						    <label for="exampleInputPassword1">Password</label>
						    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" required="required" name="password">
						  </div>
						  
						  <div class="text-center"><button type="submit" class="btn btn-primary">Update</button></div>
						</form>
					
					</div>
				</div>
			</div>
		</div>
</div>
<!-- footer -->
<%@include file="CSS/footer.jsp" %>
<!-- footer end --> 
</body>
</html>