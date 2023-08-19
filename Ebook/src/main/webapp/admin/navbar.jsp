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
             <form class=" form-inline my-2 my-lg-0" action="search.jsp" method="post" >
                 <input class= "form-control mr-sm-2" type= "search" name="ch"
                     placeholder="Search" aria-label="Search">
                 <button class="btn btn-primary my-2 my-sm-0" type= "submit"  >Search</button>
             </form>
         </div>
         <div class="col-md-3">
             <a href= "loginpage.jsp" class="btn btn-success"><i class="fa-solid fa-right-to-bracket"></i> Login</a>
              <a href="signup.jsp"
                 class="btn btn-primary text-white"><i class="fa-solid fa-user-plus"></i> Sign Up</a>
         </div>
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
          <a class="nav-link active" aria-current="page" href="home.jsp"><i class="fa-solid fa-house"></i> Home</a>
        </li>
  	 </ul>
       </div>
  </div>
</nav>
<!-- End Navbar -->
</body>
</html>