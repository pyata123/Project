<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="sptags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl" %>
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

</head>
<body>
<div class="container">
<sptags:form class="form-horizontal" action="addProduct"  method="post" commandName="pro" enctype="multipart/form-data">

<div class="form-group">
PRODUCTNAME : <sptags:input path="proname" class="form-control" placeholder="Entername"/>
</div>
<div class="form-group">
PRODUCTPRICE: <sptags:input path="proprice" class="form-control" placeholder="Enterprice" />
</div>
<div class="form-group">
PRODUCTIMAGE: <sptags:input type="file" path="image" class="form-control" placeholder="image" />
</div>

<input  type="submit"  value="saveproduct" />
</sptags:form>
<!DOCTYPE html>
<html lang="en">
<head>
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  
  <table class="table table-dark table-hover">
    <thead>
      <tr>
        <th>proid</th>
        <th>proname</th>
        <th>proprice</th>
        <th>Edit</th>
        <th>Delete</th>
        <th>image</th>
      </tr>
    </thead>
    <tbody>
    <jstl:forEach items="${productInfo}" var="p">
  <tr class="bg-primary">
      <tr>
      
        <td>${p.proid}</td>
        <td>${p.proname}</td>
        <td>${p.proprice}</td>
        <td><a href="editProduct?proId=${p.proid}">edit</a>
        <td><a href="deleteProduct?proId=${p.proid}">delete</a>
        <td><a href="displayProduct?proId=${p.proid}"><img src="resources/${p.proid}.jpg"  width="100" height="100"></td></a>
      </tr>
   </jstl:forEach>
    </tbody>
  </table>
</div>
</body>
</html>

</div>
</body>
</html>