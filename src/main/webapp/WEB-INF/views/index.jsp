<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<title>Bootstrap Example</title>
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
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
 <ul class="navbar-nav">
  <li class="nav-item active">
<a class="nav-link" href="home.html">HOME</a>
</li>
 <li class="nav-item active">
<a class="nav-link" href="product.html">PRODUCT</a>
</li>
<li class="nav-item active">
<a class="nav-link" href="category.html">CATEGORY</a>
 </li>
 <li class="nav-item active">
<a class="nav-link" href="supplier.html">SUPPLIER</a>
 </li>
</ul>
</nav>

<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="500">
   <!-- Indicators -->
   <ol class="carousel-indicators">
     <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
     <li data-target="#myCarousel" data-slide-to="1"></li>
     <li data-target="#myCarousel" data-slide-to="2"></li>
     <li data-target="#myCarousel" data-slide-to="3"></li>
   </ol>

   <!-- Wrapper for slides -->
   <div class="carousel-inner" role="listbox">

     <div class="item active">
       <img src="resources/laptop.jpg" alt="Chania" width="460" height="345">
       <div class="carousel-caption">
         <h3>Samsung</h3>
         <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
       </div>
     </div>


     <div class="item">
       <img src="resources/laptopAsus.jpg" alt="Flower" width="460" height="345">
       <div class="carousel-caption">
         <h3>Asus</h3>
         <p>Beautiful flowers in Kolymbari, Crete.</p>
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




</body>
</html>