<%@page import="com.entity.BookDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
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
<div class="container p-4">
	<div class="row">
		<div class= "col-md-4 offset-md-4">
			<div class="card">
				<div class="card-body">
    <h1 class="text-center">Edit Books</h1>
    
        
        <%
        int id=Integer.parseInt(request.getParameter("id"));
        BookDAOImpl dao=new BookDAOImpl(DBConnect.getConn());
        BookDtls b=dao.getBookId(id);
        
        %>
    
    <form action="../editbooks" method="POST" >
    <input type="hidden" name="id" value="<%=b.getBookId()%>">
      <div class="form-group">
        <label for="bookName">Book Name</label>
        <input type="text" class="form-control" id="bookName" name="bname" placeholder="Enter book name" value="<%=b.getBookName() %>" >
      </div>
      <div class="form-group">
        <label for="authorName">Author Name</label>
        <input type="text" class="form-control" id="authorName" name="author" placeholder="Enter author name" value="<%=b.getAuthor() %>">
      </div>
      <div class="form-group">
        <label for="price">Price</label>
        <input type="number" class="form-control" id="price" name="price" placeholder="Enter price" value="<%=b.getPrice() %>">
      </div>
      <div class="form-group">
        <label for="status">Book Status</label>
        <select class="form-control" id="bstatus" name="status">
        <% if("Active".equals(b.getStatus())){
        %>
        <option value="Available">Available</option>
        <option value="Unavailable">Unavailable</option>
        <%
        }else{
        %>
        <option value="Unavailable">Unavailable</option>
        <option value="Available">Available</option>
        <%
         } 
        %>  
         
        </select>
      </div>
      <div class="text-center">
      <button type="submit" class="btn btn-primary">Update</button>
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