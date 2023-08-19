<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Navbar</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>

<div class =" container-fluid p-3">
    <div class="row">
         <div class="col-md-3">
            <h3><i class="fa-solid fa-book-open-reader"></i> Bookasia</h3>
         </div>
         <div class="col-md-6">
             <form class=" form-inline my-2 my-lg-0" action="search.jsp" method="post">
                 <input class= "form-control mr-sm-2"  type= "search" name="ch"
                     placeholder="Search" aria-label="Search">
                 <button class="btn btn-primary my-2 my-sm-0" type= "submit">Search</button>
             </form>
         </div>
         <c:if test="${not empty userobj }">
         
         <div class="col-md-3">
         
              <a href="checkout.jsp"><i class="fa-solid fa-cart-shopping fa-2x"></i></a>
         
             <a href= "loginpage.jsp" class="btn btn-success"><i class="fa-regular fa-user"></i> ${userobj.name}</a> 
             <a href="logout" class="btn btn-primary text-white"><i class="fa-solid fa-right-from-bracket"></i> Log out</a>
         </div>
         
         </c:if>
  
  
  		<c:if test="${empty userobj }">
  		
  		 <div class="col-md-3">
             <a href= "loginpage.jsp" class="btn btn-success"><i class="fa-solid fa-right-to-bracket"></i> Login</a> <a href="signup.jsp"
                 class="btn btn-primary text-white"><i class="fa-solid fa-user-plus"></i> Sign Up</a>
         </div>
  		
  		</c:if>       
         
    </div>
</div>


<!--  Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item active">
          <a class="nav-link active" aria-current="page" href="index.jsp"><i class="fa-solid fa-house"></i> Home</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link active" href="all_recent_book.jsp"><i class="fa-solid fa-book"></i> Recent Book</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link active" href="all_new_book.jsp"><i class="fa-solid fa-book" ></i> New Book</a>
        </li>
<li class="dropdown">
	  <button class="btn btn-light dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
		Category
	  </button>
	  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
		<li><a class="dropdown-item" href="all_old_book.jsp">Old Book</a></li>
		<li><a class="dropdown-item" href="#">Other Book</a></li>
		<li><a class="dropdown-item" href="#">Something else here</a></li>
	  </ul>
	</li>
      </ul>
      <form class="d-flex" role="search">
        <a href="setting.jsp" class="btn btn-light" type="submit"><i class="fa-solid fa-gears"></i> Setting</a>
        <a href="helpline.jsp" class="btn btn-light ml-1" type="submit"><i class="fa-solid fa-mobile"></i> Contact Us</a>
      </form>
    </div>
  </div>
</nav>
<!-- End Navbar -->
</body>
</html>