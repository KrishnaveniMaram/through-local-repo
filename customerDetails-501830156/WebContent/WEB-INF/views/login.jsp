<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Customer app login page!</title>
<style type="text/css">
.error{
 color: red;
 font-family: sans-serif;
 font-style: italic;
 align:left;
}
.split {
  height: 100%;
  width: 50%;
  position: fixed;
  z-index: 1;
  top: 0;
  overflow-x: hidden;
  padding-top: 20px;
}
.left {
  left: 0;
  background-color:	#FFFFFF ;
}
.right {
  right: 0;
  background-color:#FAEBD7 ;
}
.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
}
</style>
</head>
<body>
${error }<br/>
${message }<br/>
<form:form action="login" method="post" modelAttribute="userbean">

<div class="split left">
  <div class="centered">
 
    <h2>Login Page</h2>
    <p>Please Enter Your Valid Credentials</p>
  </div>
</div>


<div class="split right">
  <div class="centered">
	<table>
	<tr>
		<td>Enter email</td>
		<td><form:input path="email"/><form:errors path="email" class="error"/></td>
	</tr>
	<tr>
		<td>Enter password</td>
		<td><form:input path="password" type="password"/><form:errors path="password" class="error"/></td>
	</tr>
	<tr>
		<td><input type="submit"/></td>
	</tr>
</table>
  </div>
</div>

</form:form>
</body>
</html>










