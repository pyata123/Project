<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="sptags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
.bootstrap-iso .form-control:focus{border-color: #5cb85c;  box-shadow: none; -webkit-box-shadow: none;}
.bootstrap-iso .has-error .form-control:focus{box-shadow: none; -webkit-box-shadow: none;}
</style>
<title>Insert title here</title>
</head>
<body>
<div class="container">
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
 <ul class="navbar-nav">
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
<p class="text-muted" align="center">Registration Form</p>
</div>
<div class="container">
<div class="card">
<div class="container">
<sptags:form class="form-horizontal" action="registerUser" name="register" onsubmit="fun()" method="post" commandName="register" enctype="Multipart/form-data">

<div class="form-group">
<label class="col-sm-offset-2 control-label col-sm-2" for="name">User Name</label>
 <div class="col-sm-4"> 
<sptags:input path="userName"  class="form-control" placeholder="Username"/>
</div>
</div>
<div class="form-group">
<label class="col-sm-offset-2 control-label col-sm-2" for="dob">Date Of Birth</label>
<div class="col-sm-4"> 
  <sptags:input path="dob" class="form-control" placeholder="enter dob"/>
</div>
</div>
<div class="form-group">
<label class="col-sm-offset-2 control-label col-sm-2" for="address">Enter Address</label>
<div class="col-sm-4"> 
<sptags:input path="address" class="form-control" placeholder="Enteraddress"/>
</div>
</div>
<div class="form-group">
<label class="col-sm-offset-2 control-label col-sm-2" for="email">Enter Email-id</label>
<div class="col-sm-4">
<sptags:input path="email" class="form-control" placeholder="Enter email"/>
</div>
</div>
<div class="form-group">
<label class="col-sm-offset-2 control-label col-sm-2" for="num">Enter MobileNumber</label>
<div class="col-sm-4">
<sptags:input path="mobileNumber" class="form-control" placeholder="Enter number"/>
</div>
</div>

<div class="form-group">
<label class="col-sm-offset-2 control-label col-sm-2" for="password">Password</label>
<div class="col-sm-4">
<sptags:input type="password" path="password" class="form-control" placeholder="Enterpassword"/>
</div>
</div>


<div class="col-sm-offset-6 col-sm-8 pt-2 pb-4">
<input  type="submit"  value="Register"  class="btn btn-dark"/>
</div>
</sptags:form>
</div>
</div>
</div>
<script>
function fun(){
	var x=document.register.userName.value;
if(x.length>6)
	{
	true;
	}else{
		alert("username is too short");
	}
	var y=document.register.password.value;
if(y.length>6){true;}else{
	alert("password is too short");
}
var z=document.register.mobileNumber.value;
if(z.length==10){
	true;
}else{
	alert("mobile number should be 10 digits");
}
}
</script>
</body>

</html>