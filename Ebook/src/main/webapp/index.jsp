<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="CSS/allCss.jsp" %>
<link rel="stylesheet" href="styles.css">
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
<%
User u=(User)session.getAttribute("userobj");
%>
<div class="container-lg mt-3 border">
  <div class="head">
    <h2>We make reading better.</h2>
        <p>“Books Are My Favourite Friends,<br> And I Consider My Home Library, With Many Thousand Books,<br> To Be My Greatest Wealth.”<br>~Dr APJ Abdul Kalam</p>
    </div>
   <div class="headimg">
  </div>
</div>
<br>

 <img class="d-block w-100" src="CSS/img/samp2.jpg" alt="#"> 
<%-- <div>
<%@include file="slideshow.jsp" %>
</div> --%>


<!-- start recent book -->
<div class="container">
      <h3 class="text-center"> Recent Book</h3>
      <div class="row">
        <%
        BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
        List<BookDtls> list2 = dao2.getRecentBooks();
        for (BookDtls b :list2){
        %>
        <div class="col-md-3">
         <div class="card crd-ho">
          <div class="card-body text-center">
            <img class="img-thumblin" src="book/<%=b.getPhotoName() %>" alt="" width=150px; height=200px;> 
             <p><%=b.getBookName() %></p>
             <p><%=b.getAuthor() %></p>
             <p>
             <%
             if(b.getBookCategory().equals("Old")){
             %>
             Categories:<%=b.getBookCategory() %></p>
              <div class="row">
                <a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-info btn-sm ml-1">View Detail</a> 
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
             
               
                <a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-info btn-sm ml-1">View Detail</a> 
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

<br>
<div class="text-center">
<a href="all_recent_book.jsp" class="btn btn-dark btn-sm">View All</a>
</div>

<!-- End Recent book -->
<hr>

<!-- start New book -->
<div class="container">
      <h3 class="text-center"> New Book</h3>
      <div class="row">
        
        
        <%
        BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
        List<BookDtls> list = dao.getNewBook();
        for (BookDtls b :list){
        %>
        <div class="col-md-3">
        <div class="card crd-ho">
          <div class="card-body text-center">
            <img class="img-thumblin" src="book/<%=b.getPhotoName() %>" alt="" width=150px; height=200px;> 
             <p><%=b.getBookName() %></p>
             <p><%=b.getAuthor() %></p>
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
          </div>
         </div>
         </div>
         <%
         }
         %>
            
      </div>
</div>

<br>
<div class="text-center">
<a href="all_new_book.jsp" class="btn btn-dark btn-sm">View All</a>
</div>

<hr>
<!-- End New book -->
<!-- start Old book -->
<div class="container">
      <h3 class="text-center"> Old Book</h3>
      <div class="row">
        
  
        <%
        BookDAOImpl dao3 = new BookDAOImpl(DBConnect.getConn());
        List<BookDtls> list3 = dao2.getOldBooks();
        for (BookDtls b :list3){
        %>
        <div class="col-md-3">
         <div class="card crd-ho">
          <div class="card-body text-center">
            <img class="img-thumblin" src="book/<%=b.getPhotoName() %>" alt="" width=150px; height=200px;> 
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


<br>

<div class="text-center">
<a href="all_old_book.jsp" class="btn btn-dark btn-sm">View All</a>
</div>

<!-- End old book -->
<hr>

<!-- footer -->
<%@include file="CSS/footer.jsp" %>
<!-- footer end -->
</body>
</html>