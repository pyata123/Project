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
<sptags:form class="form-horizontal" action="addSupplier"  method="post" commandName="sup">
<div class="form-group">
SUPPLIERID : <sptags:input path="supplierId" class="form-control" placeholder="Enterid"/>
</div>
<div class="form-group">
SUPPLIERNAME : <sptags:input path="supplierName" class="form-control" placeholder="Entername"/>
</div>
<div class="form-group">
SUPPLIERDESCRIPTION: <sptags:input path="supplierDescription" class="form-control" placeholder="EnterDescription" />
</div>
<input  type="submit"  value="savesupplier" />
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
        <th>supplierid</th>
        <th>suppliername</th>
        <th>supplierdescription</th>
        <th>Edit</th>
        <th>Delete</th>
      </tr>
    </thead>
    <tbody>
    <jstl:forEach items="${supInfo}" var="s">
  <tr class="bg-primary">
      <tr>
      
        <td>${s.supplierId}</td>
        <td>${s.supplierName}</td>
        <td>${s.supplierDescription}</td>
         <td><a href="editSupplier?supId=${s.supplierId}">edit</a>
        <td><a href="deleteSupplier?supId=${s.supplierId}">delete</a>
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