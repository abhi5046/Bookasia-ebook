<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up Page</title>
<%@include file="CSS/allCss.jsp" %>
<link rel="stylesheet" href="styles.css">
</head>
<body>
<!-- start navbar -->
<%@include file="CSS/navbar.jsp" %>
<!-- end navbar -->


<div class="container p-4">
 <div class="row">
	<div class="col-md-4 offset-md-4">
	 <div class="card">
	  <div class="card-body">
<h4 class="text-center">Sign Up</h4>

<c:if test="${not empty succMsg }">
<p class="text-center text-success">${succMsg}</p>
<c:remove var="succMsg" scope="session"/>
</c:if>

<c:if test="${not empty failedMsg }">
<p class="text-center text-danger">${failedMsg}</p>
<c:remove var="failedMsg" scope="session"/>
</c:if>

<form action="signup" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Enter Full Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter name" required="required" name="name">
   
  </div>
  
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required="required" name="email">
   
  </div>
  
  <div class="form-group">
    <label for="exampleInputEmail1">Phone Number</label>
    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Phone Number" required="required" name="phone">
   
  </div>
  
  
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" required="required" name="password">
  </div>
  <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="check">
    <label class="form-check-label" for="exampleCheck1">Agree Terms & Conditions</label>
  </div>
  <div class="text-center"><button type="submit" class="btn btn-primary">Sign Up</button></div>
</form>

	  </div>
	 </div>
	</div>
 </div>
</div>


<div id="footer">
<!-- footer -->
<%@include file="CSS/footer.jsp" %>
<!-- footer end -->
</div>
</body>
</html>