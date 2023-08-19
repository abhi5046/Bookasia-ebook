<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin:Home</title>
<%@include file="allCss.jsp" %>
<style type="text/css">
.a{
	text-decoration:none;
	color:black;
}
a:hover{
	text-decoration:none;
	color:black;
}
</style>


</head>
<body>
<%@include file="navbar.jsp" %>
<%--  <c:if test="${empty userobj  }">
 <c:redirect url="../loginpage.jsp"/>
</c:if>
  --%>
<h2 class="text-center">Hello Admin</h2>
<div class="container">
		<div class="row p-5">
				<div class="col-md-3">
				<a href="add_books.jsp">
					<div class="card">
						<div class="card-body text-center">
						<i class="fa-solid fa-folder-plus fa-4x text-primary"></i><br>
						 <h4>Add Books</h4>
						</div>
					</div>
					</a>
				</div>
				
				<div class="col-md-3">
				<a href="all_books.jsp">
					<div class="card">
						<div class="card-body text-center">
						<i class="fa-solid fa-book-open fa-4x text-secondary"></i><br>
						 <h4>All Books</h4>
						</div>
					</div>
					</a>
				</div>
				<div class="col-md-3">
				<a href="all_orders.jsp">
					<div class="card">
						<div class="card-body text-center">
						<i class="fa-solid fa-box-open fa-4x text-success"></i><br>
						 <h4>Orders</h4>
						</div>
					</div>
					</a>
				</div>
				<div class="col-md-3">
				<a data-toggle="modal" data-target="#exampleModal">
					<div class="card">
						<div class="card-body text-center">
						<i class="fa-solid fa-right-from-bracket fa-4x text-info"></i><br>
						 <h4>Log Out</h4>
						</div>
					</div>
				</a>
				</div>
		</div>
</div>
<!-- start logout modal -->



<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Log Out</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <div class="text-center">
        <h4>Do you want to Log Out</h4>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <a href="../logout" type="button" class="btn btn-primary text-white">Log Out</a>
      </div>
      </div>
      <div class="modal-footer">
        
      </div>
    </div>
  </div>
</div>

<!-- end logout modal -->

<div class="container">
<div class="row p-5">
<div class="col-md-6">
<img class="d-block w-100" src="https://www.thebigbookbox.com/wp-content/uploads/2023/03/1-2.png" alt="#">
</div><br>
<div class="col-md-6">
<img class="d-block w-100" src="https://www.thebigbookbox.com/wp-content/uploads/2023/03/3-3.png" alt="#">
</div>

</div>
</div>
<div style="margin-top:300px;">
	<%@include file="footer.jsp" %>
</div>

</body>
</html>