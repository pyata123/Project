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
</head>
<body>
<div class="container">
<p class="text-muted" align="center">Supplier</p>
</div>
<div class="container">
<sptags:form class="form-horizontal" action="addSupplier"  method="post" commandName="sup">

<div class="form-group">
SUPPLIERNAME : <sptags:input path="supplierName" class="form-control" placeholder="Entername"/>
</div>
<div class="form-group">
SUPPLIERDISCRIPTION: <sptags:input path="supplierDescription" class="form-control" placeholder="EnterDescription" />
</div>
<input  type="submit"  value="saveSupplier" />
</sptags:form>
</div>
<div class="container">
 <table class="table table-bordered  table-hover">
    <thead>
      <tr>
        <th>supplierid</th>
        <th>suppliername</th>
        <th>supplierdescription</th>
    <th>edit</th>
        <th>delete</th>
      </tr>
<jscore:forEach items="${supInfo}" var="s">

      <tbody>
      <tr>
<td>${s.supplierId }</td>
<td>${s.supplierName}</td>
<td>${s.supplierDescription}</td>
<td><a href="editSupplier?supid=${s.supplierId }" >edit</a></td>
<td><a href="deleteSupplier?supid=${s.supplierId }" >delete</a></td>
</jscore:forEach>
</tr>
</tbody>
</table>
</div>

</div>
</body>
</html>