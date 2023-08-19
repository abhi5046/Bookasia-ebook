<%@page import="com.entity.Book_Order"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookOrderImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: Orders Page</title>
<%@include file="allCss.jsp" %>
</head>
<body>

<!-- navbar start --> 
<%@include file="navbar.jsp" %>
<!-- navbar ends	 -->
<h2 class="text-center">Hello Admin</h2>
		<table class="table table-striped">
  		 <thead class="table-dark">
    <tr>
      <th scope="col">Order ID</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Address</th>
      <th scope="col">Phone No</th>
      <th scope="col">Author</th>
      <th scope="col">Price</th>
      <th scope="col">Payment Type</th>
    </tr>
  </thead>
  <tbody>
  <%
  BookOrderImpl dao=new BookOrderImpl(DBConnect.getConn());
  List<Book_Order> blist=dao.getAllOrder();
  for(Book_Order b:blist){
  %>
    <tr>
      <th scope="row"><%=b.getOrderId() %></th>
      <td><%=b.getUserName() %></td>
      <td><%=b.getEmail() %></td>
      <td><%=b.getFulladd() %></td>
      <td><%=b.getPhno() %></td>
      <td><%=b.getAuthor() %></td>
      <td><%=b.getPrice() %></td>
      <td><%=b.getPaymentType() %></td>
    </tr>
	<%
 	 }
	%>
    
  </tbody>	
		</table>
		<div style="margin-top:300px;">
		<%@include file="footer.jsp" %>
		</div>
</body>
</html>