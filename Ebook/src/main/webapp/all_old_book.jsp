<%@page import="java.util.List"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Recent Book</title>
<%@include file="CSS/allCss.jsp" %>
<style>
.crd-ho:hover{
background-color:#868e91;
}
</style>
</head>
<body>
<!-- navbar strats -->
<%@include file="CSS/navbar.jsp" %>
<!-- navbar ends -->

   <div class="container-fluid">
	   	<div class="row p-5">
				<%
        BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
        List<BookDtls> list = dao.getAllOldBook();
        for (BookDtls b :list){
        %>
        <div class="col-md-3">
        <div class="card crd-ho">
          <div class="card-body text-center">
            <img class="img-thumblin" src="book/<%=b.getPhotoName() %>" alt="" width=100px; height=150px;> 
             <p><%=b.getBookName() %></p>
             <p><%=b.getAuthor() %></p>
             <p>Categories:<%=b.getBookCategory() %></p>
             <div class="row">
                
                <a href="view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-info btn-sm ml-1">View Detail</a> 
                <a href="" class="btn btn-dark btn-sm ml-1">₹<%=b.getPrice() %></a>  
             </div>
          </div>
         </div>
         </div>
         <%
         }
         %>
		
		   	</div>
	   	</div>
</body>
</html>