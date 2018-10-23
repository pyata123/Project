<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
   <meta charset="utf-8">
   
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>
  
</head>
<body>

<div class="container" style="margin-bottom:0">

   <p  class="text-primary"><img src="resources/computerzone.jpg" style="width:1000px; height:280px"></p>
</div>
<div class="container ">
<nav class="navbar navbar-inverse">
 <ul class="nav navbar-nav">
 
   <li class="nav-item active">
     
  <a class="nav-link" href="login"> Login</a>


</li>
<li class="nav-item active">
<a class="nav-link" href="register">Register</a>
  </li>
  <li class="nav-item active">
<a class="nav-link" href="user">Products</a>
  </li>
    <li class="nav-item active">
<a class="nav-link" href="logout">Logout</a>
  </li>
  
</ul>
</nav>
</div>

<div class="container">
 <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="5000" >
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

    
  <div class="item">
        <img src="resources/keyboard.jpg" alt="Flower" width="460" height="345">
        <div class="carousel-caption">
          <h3>KEYBOARD</h3>
          <p>KEYBOARDS BY HP.</p>
        </div>
      </div>
    <div class="item active">
        <img src="resources/laptop-book-animation1.gif" alt="Chania" width="460" height="345">
        <div class="carousel-caption">
          <h3>Lenova thinkpad</h3>
          <p>lenova thinkpad by LENOVA.</p>
        </div>
      </div>
    <div class="item">
        <img src="resources/desktop1.jpg" alt="Flower" width="460" height="345">
        <div class="carousel-caption">
          <h3>APPLE DESKTOP</h3>
          <p>APPLE IMAC.</p>
        </div>
      </div>
    <div class="item">
        <img src="resources/mouse1.jpg" alt="Flower" width="460" height="345">
        <div class="carousel-caption">
          <h3>Mouse</h3>
          <p>GoldeTech Wireless Mouse.</p>
        </div>
      </div>
      
      <div class="item">
        <img src="resources/laptopenvy.jpg" alt="Flower" width="460" height="345">
        <div class="carousel-caption">
          <h3>HP Envy</h3>
          <p>HP ENVY sleek BOOK.</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>


    
    <div class="container fluid text-center">
    <h1><img src="resources/Capture.jpg" style="width:100%; height:100%"></h1>
    
    </div>
</body>
</html>