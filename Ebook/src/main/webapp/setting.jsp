<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="CSS/allCss.jsp" %>
<style type="text/css">
a{
text-decoration:none;
color: #0c0d0c;
}
a:hover{
text-decoration:none;
}

</style>

</head>
<body style="background-color:#f0f1f2;">
<c:if test="${empty userobj }">
<c:redirect url="loginpage.jsp" />
</c:if>
<!-- navbar strats -->
<%@include file="CSS/navbar.jsp" %>
<!-- navbar ends -->
  <div class="container">
    <h3 class="text-center">Hello,${userobj.name}</h3>
	  <div class="row p-5">
		  <div class="col-md-4">
		  <a href="sell_book.jsp">
			   <div class="card">
				   <div class="card-body text-center">
				   <div class="text-info">
				   <i class="fa-solid fa-book fa-3x"></i>
				   </div>
				   <h4>Sell Old Book</h4>
				   </div>
			   </div>
		  </a>
		  </div>
		  
					  <div class="col-md-4">
					  <a href="old_book.jsp">
						   <div class="card">
							   <div class="card-body text-center">
							   <div class="text-info">
							   <i class="fa-solid fa-book fa-3x"></i>
							   </div>
							   <h4>Old Book</h4>
							   </div>
						   </div>
					  </a>
					  </div>
				  <div class="col-md-4">
				  <a href="edit_profile.jsp">
					   <div class="card">
						   <div class="card-body text-center">
						   <div class="text-info">
						  <i class="fa-solid fa-user-pen fa-3x"></i>
						   </div>
						   <h4>Edit Profile</h4>
						   </div>
					   </div>
				  </a>
				  </div>
						 
								  <div class="col-md-6 mt-3">
								  <a href="order.jsp">
									   <div class="card">
										   <div class="card-body text-center">
										   <div class="text-secondary">
										  <i class="fa-solid fa-dolly fa-4x"></i>
										   </div>
										   <h4>Order</h4>
										   <p>Track order</p>
										   </div>
									   </div>
								  </a>
								  </div>
										  <div class="col-md-6 mt-3">
										  <a href="helpline.jsp">
											   <div class="card">
												   <div class="card-body text-center">
												   <div class="text-success">
												  <i class="fas fa-user-circle fa-4x"></i>
												   </div>
												   <h4>Help Center</h4>
												   <p>24*7 Care</p>
												   </div>
											   </div>
										  </a>
										  </div>
	  </div>
  </div>
<!-- footer -->
<%@include file="CSS/footer.jsp" %>
<!-- footer end -->
</body>
</html>