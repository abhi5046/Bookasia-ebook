<%@page import="java.util.List"%>
<%@page import="com.entity.Cart"%>
<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.CartDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cart page</title>
<%@include file="CSS/allCss.jsp" %>
</head>
<body style="background-color:#f0f1f2;">
<!-- start navbar -->
<%@include file="CSS/navbar.jsp" %>
<!-- end navbar -->
<c:if test="${ empty userobj }">
<c:redirect url="loginpage.jsp"></c:redirect>
</c:if>

<c:if test="${not empty succMsg }">
<div class="alert alert-success" role="alert">${succMsg }</div>
<c:remove var="succMsg" scope="session"/>
</c:if>

<c:if test="${not empty failedMsg }">
<div class="alert alert-danger text-center" role="alert">${failedMsg}</div>
<c:remove var="failedMsg" scope="session"/>
</c:if>

			<div class="container">
			<div class="row p-3">
			<div class="col-md-6">
			<div class="card bg-white">
			<div class="card-body">
			<h3 class="text-center text-success">Your Selected Item</h3>
							  <table class="table table-striped">
						  <thead>
						    <tr>
						      <th scope="col">Book Name</th>
						      <th scope="col">Author</th>
						      <th scope="col">Price</th>
						      <th scope="col">Action</th>
						    </tr>
						  </thead>
						  <tbody>
						  
						  <%
						  User u=(User)session.getAttribute("userobj");
						  
						    CartDAOImpl dao=new CartDAOImpl(DBConnect.getConn());
						  	List<Cart> cart=dao.getBookByUser(u.getId());
						  	Double totalPrice=0.00;
						  	for(Cart c : cart){
						  		totalPrice=c.getTotalPrice();
						  %> 
						  <tr>
						      <th scope="row"><%=c.getBookName() %></th>
						      <td><%=c.getAuthor() %></td>
						      <td><%=c.getPrice() %></td>
						      <td>
						      <a href="remove_book?bid=<%=c.getBid() %>&&uid=<%=c.getUserId() %>&&cid=<%=c.getCid() %>" class="btn btn-sm btn-dark"> Remove</a>
						      </td>
						    </tr>
						    <%
						  	}
						    %>
						
						<tr>
						<td>Total Price</td>
						<td></td>
						<td></td>
						<td><%=totalPrice %></td>
						</tr>
						
						  </tbody>
						</table>
					</div>
					</div>
					</div>
										<div class="col-md-6">
										<div class="card">
										<div class="card-body">
										<h3 class="text-center text-success">Your Details for Order </h3>
										<form action="order" method="post">
										<input type="hidden" value="${userobj.id }" name="id">
											<div class="form-row">
											    <div class="form-group col-md-6">
											      <label for="inputEmail4">Name</label>
											      <input name="username" type="text" class="form-control" id="inputEmail4" value=<%=u.getName() %> readonly="readonly" required>
											    </div>
											    <div class="form-group col-md-6">
											      <label for="inputPassword4">Email</label>
											      <input name="email" type="email" class="form-control" id="inputPassword4" value=<%=u.getEmail() %> required>
											    </div>
											</div>							
											<div class="form-row">
											    <div class="form-group col-md-6">
											      <label for="inputEmail4">Phone Number</label>
											      <input name="phno" type="number" class="form-control" id="inputEmail4" value=<%=u.getPhone() %> required>
											    </div>
											    <div class="form-group col-md-6">
											      <label for="inputPassword4">Adress</label>
											      <input name="address"type="text" class="form-control" id="inputPassword4" required>
											    </div>
											</div>	
											<div class="form-row">
											    <div class="form-group col-md-6">
											      <label for="inputPassword4">Landmark</label>
											      <input name="landmark"type="text" class="form-control" id="inputPassword4" required >
											    </div>
											    <div class="form-group col-md-6">
											      <label for="inputEmail4">City</label>
											      <input name="city" type="text" class="form-control" id="inputEmail4" required>
											    </div>
											</div>
												<div class="form-row">
												<div class="form-group col-md-6">
											      <label for="inputPassword4">State</label>
											      <input name="state" type="text" class="form-control" id="inputPassword4" required>
											    </div>
											    <div class="form-group col-md-6">
											      <label for="inputEmail4">Pin Code</label>
											      <input name="pincode" type="text" class="form-control" id="inputEmail4" required>
											    </div>
											    </div>		
											    
											    <div class="form-group">
											    <label>Payment Mode</label>
											    <select class="form-control" name="payment">
											    <option value="noselect">---Select---</option>
											    <option value="COD">Pay On Delivery(POD)</option>
											    </select>
											    </div>
										
												<div class="text-center">
												<button class="btn btn-info">Order Now</button>
												<a href="index.jsp" class="btn btn-success"> Continue Shopping</a>
												</div>
										
										</form>
										</div>
										</div>
										</div>
			</div>
			</div>
</body>
</html>