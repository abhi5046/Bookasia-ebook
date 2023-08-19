<%@page import="com.entity.Book_Order"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookOrderImpl"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Orders</title>
<%@include file="CSS/allCss.jsp" %>
</head>
<body style="background-color:#f0f1f2;">

<c:if test="${ empty userobj }">
<c:redirect url="loginpage.jsp"></c:redirect>
</c:if>

<!-- navbar strats -->
<%@include file="CSS/navbar.jsp" %>
<!-- navbar ends -->

	<div class="container p-1">
	
	<h3 class="text-center text-info"> Your Order</h3>
		<table class="table mt-3">
		  <thead class="thead-dark">
		    <tr>
		      <th scope="col">Order Id </th>
		      <th scope="col">Name</th>
		      <th scope="col">Book Name</th>
		      <th scope="col">Author</th>
		      <th scope="col">Price</th>
		      <th scope="col">Payment Method</th>
		    </tr>
		  </thead>
		  <tbody>
		  
		  <%
		  User u=(User)session.getAttribute("userobj");
		  BookOrderImpl dao=new BookOrderImpl(DBConnect.getConn());
		  List<Book_Order> blist=dao.getBook(u.getEmail());
		  for(Book_Order b:blist){
		  %>
		    <tr>
		      <th scope="row"><%=b.getOrderId() %></th>
		      <td><%=b.getUserName() %></td>
		      <td><%=b.getBookName() %></td>
		      <td><%=b.getAuthor() %></td>
		      <td><%=b.getPrice() %></td>
		      <td><%=b.getPaymentType() %></td>
		    </tr>
		   <%
		  }
		   %>

		   
		  </tbody>
		</table>
			
	
	</div>

<%-- <!-- footer -->
<%@include file="CSS/footer.jsp" %>
<!-- footer end --> --%>

</body>
</html>