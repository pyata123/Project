<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jscore" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
 <table class="table table-dark">
    <thead>
      <tr>
        <th>cartid</th>
        <th>cartuser</th>
        <th>productname</th>
        <th>productprice</th>
        <th>quantity</th>
        <th>totalprice</th>
      </tr>
<jscore:forEach  items="${cartInfo}" var="ca" >

<jscore:set var="payAmt" value="${payAmt+ca.totalPrice}" />

      <tbody>
      <tr>
<td>${ca.cartId }</td>
<td>${ca.cartUser }</td>
<td>${ca.productName}</td>
<td>${ca.productPrice}</td>
<td>${ca.quantity}</td>
<td>${ca.totalPrice}</td>
</jscore:forEach>
</tr>
</tbody>
</table>
</div>

</div>

<h1 align="center"> payableAmount=${payAmt}</h1>
<a href="deleteCart?username=${ca.cartUser}">cancel order</a>
<a  href="">confirm order</a>
</body>
</html>