<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jscore" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="sptags" %> 
    <%@ include file="admin.jsp"%>
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
  <style>
.bootstrap-iso .form-control:focus{border-color: #5cb85c;  box-shadow: none; -webkit-box-shadow: none;}
.bootstrap-iso .has-error .form-control:focus{box-shadow: none; -webkit-box-shadow: none;}
</style>
</head>
<body >
<div class="container">
<p class="text-muted" align="center">Product Form</p>
</div>
<div class="container">
<sptags:form class="form-horizontal" action="addProduct"  method="post" commandName="pro" enctype="Multipart/form-data">

<div class="form-group">
<label class="col-sm-offset-2 control-label col-sm-2" for="name">Product Name</label>
 <div class="col-sm-4"> 
<sptags:input path="name" class="form-control" placeholder="Entername"/>
</div>
</div>
<div class="form-group">
<label class="col-sm-offset-2 control-label col-sm-2" for="price">ProductPrice</label>
<div class="col-sm-4"> 
  <sptags:input path="price" class="form-control" placeholder="Enterprice"/>
</div>
</div>
<div class="form-group">
<label class="col-sm-offset-2 control-label col-sm-2" for="description">ProductDescription</label>
<div class="col-sm-4"> 
<sptags:input path="productDescription" class="form-control" placeholder="Enterdescription"/>
</div>
</div>
<div class="form-group">
<label class="col-sm-offset-2 control-label col-sm-2" for="categoryname">CategoryName</label>

  
<div class="col-sm-4">




      
<sptags:select path="categoryName" class="form-control" placeholder="Entercategory">
<jscore:forEach items="${catInfo}" var="c">
<option value="${c.catName} ">${c.catName}</option>
</jscore:forEach>
</sptags:select>
</div>
</div>


<div class="form-group">
<label class="col-sm-offset-2 control-label col-sm-2" for="suppliername">SupplierName</label>
<div class="col-sm-4">
<sptags:select path="supplierName" class="form-control" placeholder="Entersuppliername">
<jscore:forEach items="${supInfo}" var="s">
<option value="${s.supplierName} ">${s.supplierName}</option>
</jscore:forEach>
</sptags:select>
</div>
</div>
<div class="form-group">
<label class="col-sm-offset-2 control-label col-sm-2" for="stock">Stock</label>
 <div class="col-sm-4">
 <sptags:input path="stock" class="form-control" placeholder="Enterprice"/>
</div>
</div>
<div class="form-group">
<label class="col-sm-offset-2 control-label col-sm-2" for="image">UploadImage</label>
<div class="col-sm-4">
 <sptags:input type="file" path="productImage" class="form-control" />
</div>
</div>
<div class="col-sm-offset-6 col-sm-8 pt-2 pb-4">
<input  type="submit"  value="saveProduct"  class="btn btn-dark"/>
</div>
</sptags:form>
</div>
<br>
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
        <th>images</th>
        <th>edit</th>
        <th>delete</th>
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
<td><img src="resources/${p.id }.jpg" width="100px" height="100"/></td>
<td><a href="editProduct?proid=${p.id }" class="text-light" >edit</a></td>
<td><a href="deleteProduct?proid=${p.id }" class="text-light">delete</a></td>
</jscore:forEach>
</tr>
</tbody>
</table>
</div>

</body>
</html>