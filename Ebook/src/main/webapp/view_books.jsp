<%@page import="com.entity.BookDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="CSS/allCss.jsp" %>
</head>
<body style="background-color:#f0f1f2">
<!-- navbar strats -->
<%@include file="CSS/navbar.jsp" %>
<!-- navbar ends -->

		<%
		int bid= Integer.parseInt(request.getParameter("bid"));
		BookDAOImpl dao=new BookDAOImpl(DBConnect.getConn());
		BookDtls b=dao.getBookId(bid);
		%>

	<div class="container p-6">
		<div class="row p-5">
		 <div class="col-md-6 text-center p-5 border bg-white">
		 <img alt="" src="book/<%=b.getPhotoName() %>" style="height:170px;width:120px"><br>
			 	<h4 class="mt-5">Book Name: <span class="text-info"><%=b.getBookName() %></span></h4>
			 	<h4>Author Name: <span class="text-info"><%=b.getAuthor() %></span></h4>
			  	<h4>Category: <span class="text-info"><%=b.getBookCategory() %></span></h4>
		 </div>
			 <div class="col-md-6 text-center p-5 border bg-white">
			 <h2><%=b.getBookName() %></h2>
			 
			 	<%
			 	if("Old".equals(b.getBookCategory()))
			 	{%>
			    <h5>Contact Seller</h5>
			    <h5><i class="fa-solid fa-envelope-open-text"></i> Email:<%=b.getEmail() %></h5>
			    <%
			 	}
			    %>
			    
				 <div class="row">
				 <div class="col-md-4 text-center text-info">
				 <i class="fa-solid fa-hand-holding-dollar fa-3x"></i>
				 <p>Pay On Delivery(POD)</p>
				 </div>
				 <div class="col-md-4 text-center text-info">
				 <i class="fa-solid fa-rotate-left fa-3x"></i>
				 <p>Return/ Replacement Available</p>
				 </div>
				 <div class="col-md-4 text-center text-info">
				 <i class="fa-solid fa-truck-fast fa-3x"></i>
				 <p>Free Shipping Available</p>
				 </div>
			 
			 </div>
			 <%
			 if("Old".equals(b.getBookCategory()))
			 {%>
			 <div>
			 <a href="index.jsp" class="btn btn-success"><i class="fa-solid fa-cart-shopping"></i> Continue Shopping</a>
			 <a href="" class="btn btn-dark"><i class="fa-solid fa-indian-rupee-sign"></i> 250</a>
			 </div>
			 <%
			 }else{
			 %>
			 <div>
			 <a href="" class="btn btn-primary"><i class="fa-solid fa-cart-shopping"></i> Add To Cart</a>
			 <a href="" class="btn btn-dark"><i class="fa-solid fa-indian-rupee-sign"></i> 250</a>
			 </div>
			 <%
			 }
			 %>
			 
			 </div>
		</div>
	</div>
</body>
</html>