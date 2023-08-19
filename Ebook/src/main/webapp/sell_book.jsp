<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sell Book</title>
<%@include file="CSS/allCss.jsp" %>
</head>
<body style="background-color:#f0f1f2;">

<c:if test="${empty userobj }">
<c:redirect url="loginpage.jsp" />
</c:if>

<!-- navbar strats -->
<%@include file="CSS/navbar.jsp" %>
<!-- navbar ends -->

	<div class="container p-4">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body ">
						<h4 class="text-center text-info p-1"> Sell Old Book</h4>
						
						<c:if test="${not empty succMsg }">
				        <h5 class="text-center text-success">${succMsg}</h5>
				        <c:remove var="succMsg" scope="session" />
				        </c:if>
				        
				        <c:if test="${not empty failedMsg }">
				        <h5 class="text-center text-danger">${failedMsg}</h5>
				        <c:remove var="failedMsg" scope="session" />
				        </c:if>
						
						
						<form action="add_old_book" method="POST" enctype="multipart/form-data">
						<input type="hidden" value="${userobj.email }" name="user">
					      <div class="form-group">
					        <label for="bookName">Book Name</label>
					        <input type="text" class="form-control" id="bookName" name="bname" placeholder="Enter book name">
					      </div>
					      <div class="form-group">
					        <label for="authorName">Author Name</label>
					        <input type="text" class="form-control" id="authorName" name="author" placeholder="Enter author name">
					      </div>
					      <div class="form-group">
					        <label for="price">Price</label>
					        <input type="number" class="form-control" id="price" name="price" placeholder="Enter price">
					      </div>
					      <div class="form-group">
					        <label for="image">Book Image</label>
					        <input type="file" class="form-control-file" id="image" name="bimg">
					      </div >
					      <div class="text-center">
					      <button type="submit" class="btn btn-primary">Sell</button>
					      </div>
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