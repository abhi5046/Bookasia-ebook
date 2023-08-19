<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log In Page</title>
<%@include file="CSS/allCss.jsp" %>
<link rel="stylesheet" href="styles.css">
<body>
<!-- start navbar -->
<%@include file="CSS/navbar.jsp" %>
<!-- end navbar -->
<div class="container p-4">
 <div class="row">
	<div class="col-md-4 offset-md-4">
	 <div class="card">
	  <div class="card-body">
        <h4 class="text-center">Sign In</h4>
        
        <c:if test="${not empty failedMsg }">
        <h5 class="text-center text-danger">${failedMsg}</h5>
        <c:remove var="failedMsg" scope="session" />
        </c:if>
        
        <c:if test="${not empty succMsg }">
        <h5 class="text-center text-success">${succMsg}</h5>
        <c:remove var="succMsg" scope="session" />
        </c:if>
        
      
        
    <form action="loginpage" method="post">
       <div class="form-group">
     	<label for="exampleInputEmail1">Email address</label>
    	<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required="required" name="email">
        </div>
  		<div class="form-group">
    	<label for="exampleInputPassword1">Password</label>
    	<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" required="required" name="password">
 		</div>
 		 <div class="text-center">
  			<button type="submit" class="btn btn-primary">Submit</button><br>
  			<a href="signup.jsp">Create Account</a>
  		</div>
	</form>
  
    
    </div>
   </div>
  </div>
 </div>
</div>
<div class="br">
<br><br><br><br><br><br>
</div>
<div id="footer">
<!-- footer -->
<%@include file="CSS/footer.jsp" %>
<!-- footer end -->
</div>
</body>
</html>