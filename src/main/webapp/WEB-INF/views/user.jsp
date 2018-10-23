<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jscore" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <ul class="navbar-nav">
   <li class="nav-item active">
<a class="nav-link" href="register"> Register</a>
</li>
 <li class="nav-item active">
<a class="nav-link" href="login"> Login</a>
</li>
<li class="nav-item active">
<a class="nav-link" href="logout">Logout</a>
  </li>
</ul>
<ul class="nav navbar-nav navbar-right">
 <li class="nav-item active">
<a class="nav-link" href="cart"><img src="resources/cart.png" width="50px" height="50"><% session.getAttribute("ordercount"); %></a>
</li>
 
</ul>
</nav>
<div class="container">
 <table class="table table-dark table-hover">
    <thead>
      <tr>
        <th>productid</th>
        <th>productname</th>
        <th>productprice</th>
         <th>productdescription</th>
          <th>categoryname</th>
           <th>suppliername</th>
            <th>stock</th>
        <th>showmoredetails</th>
        
      </tr>
<jscore:forEach items="${productInfo}" var="p">

      <tbody>
      <tr>
<td>${p.id }</td>
<td>${p.name}</td>
<td>${p.price}</td>
<td>${p.productDescription}</td>
<td>${p.categoryName}</td>
<td>${p.supplierName}</td>
<td>${p.stock}</td>
<td><a href="displayProduct?proid=${p.id}" ><img src="resources/${p.id}.jpg" width="100px" height="100"></a></td>

</jscore:forEach>
</tr>
</tbody>
</table>
</div>

</body>
</html>