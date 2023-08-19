<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Books</title>
<%@include file="allCss.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>

<%-- <c:if test="${empty userobj  }">
 <c:redirect url="../loginpage.jsp"/>
</c:if> --%>

<div class="container p-4">
	<div class="row">
		<div class= "col-md-4 offset-md-4">
			<div class="card">
				<div class="card-body">
    <h1 class="text-center">Add Books</h1>
    
    	<c:if test="${not empty succMsg }">
        <h5 class="text-center text-success">${succMsg}</h5>
        <c:remove var="succMsg" scope="session" />
        </c:if>
        
        <c:if test="${not empty failedMsg }">
        <h5 class="text-center text-danger">${failedMsg}</h5>
        <c:remove var="failedMsg" scope="session" />
        </c:if>
        
    
    <form action="../add_books" method="POST" enctype="multipart/form-data">
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
        <label for="category">Book Category</label>
        <select class="form-control" id="category" name="categories" >
          <option value="">Select category</option>
          <option value="New">New Book</option>
          <option value="Old">Old Book</option>
          <option value="Science">Science</option>
          <option value="Commerce">Commerce</option>
          <option value="Arts">Arts</option>
          <option value="Programing">Programing</option>
        </select>
      </div>
      <div class="form-group">
        <label for="status">Book Status</label>
        <select class="form-control" id="bstatus" name="status">
          <option value="">Select status</option>
          <option value="Available">Available</option>
          <option value="Unavailable">Unavailable</option>
        </select>
      </div>
      <div class="form-group">
        <label for="image">Book Image</label>
        <input type="file" class="form-control-file" id="image" name="bimg">
      </div >
      <div class="text-center">
      <button type="submit" class="btn btn-primary">Submit</button>
      </div>
    </form>
    		</div>
    	</div>
   	 </div>
  </div>
  </div>
  <div style="margin-top:300px;">
	<%@include file="footer.jsp" %>
  </div>
</body>
</html>