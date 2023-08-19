<%@page import="com.entity.User"%>
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

<%
User u=(User)session.getAttribute("userobj");
%>

<!-- navbar strats -->
<%@include file="CSS/navbar.jsp" %>
<!-- navbar ends -->

   <div class="container-fluid">
	   	<div class="row p-5">

		<%
        BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
        List<BookDtls> list2 = dao2.getAllRecentBook();
        for (BookDtls b :list2){
        %>
        <div class="col-md-3">
         <div class="card crd-ho mt-4">
          <div class="card-body text-center">
            <img class="img-thumblin" src="book/<%=b.getPhotoName() %>" alt="" width=100px; height=150px;> 
             <p><%=b.getBookName() %></p>
             <p><%=b.getAuthor() %></p>
             <p>
             <%
             if(b.getBookCategory().equals("Old")){
             %>
             Categories:<%=b.getBookCategory() %></p>
              <div class="row">
                <a href="view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-info btn-sm ml-1">View Detail</a> 
                <a href="" class="btn btn-dark btn-sm ml-1">₹<%=b.getPrice() %></a>  
             </div>
             <%
             }else{
             %>
              <p>Categories:<%=b.getBookCategory() %></p>
             <div class="row">
             <%
             if(u==null){
             %>
             <a href="loginpage.jsp" class="btn btn-primary btn-sm ml-1">Add Cart</a>
             <%
             }else{
             %>
             <a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId() %>" class="btn btn-primary btn-sm ml-1">Add Cart</a>
             <%
             }
             %>
                <a href="view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-info btn-sm ml-1">View Detail</a> 
                <a href="" class="btn btn-dark btn-sm ml-1">₹<%=b.getPrice() %></a>  
             </div>
             <%
             }
             %>
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