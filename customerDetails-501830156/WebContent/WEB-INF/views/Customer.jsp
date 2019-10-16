<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>AddCustomer page</title>
<style type="text/css">
.error {
	color: red;
	font-family: serif;
	font-style: italic;
}

div.linkcss {
	text-align: center;
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
	background-color: #FFFFFF;
}

.right {
	right: 0;
	background-color: #FAEBD7;
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
	<form:form action="Customer" method="post" modelAttribute="customer">
		<form:hidden path="id" />

		<div class="split left">
			<div class="centered">

				<h2>Add Customer Deatils</h2>

			</div>
		</div>

		<div class="split right">
			<div class="centered">
				<div class="linkcss">
					<table align="center">
						<tr>
							<td>Enter name:<form:input path="name" />
								<form:errors path="name" class="error" />
							</td>
						</tr>
						<tr>
							<td>Enter email:<form:input path="email" />
								<form:errors path="email" class="error" />
							</td>
						</tr>
						<tr>
							<td>Enter phno:<form:input path="phoneno" />
								<form:errors path="phoneno" class="error" />
							</td>
						</tr>
						<tr>
							<td>Enter address:<form:input path="address" />
								<form:errors path="address" class="error" />
							</td>
						</tr>
						<tr>
							<td><input type="submit" /></td>
						</tr>
					</table>
				</div>
			</div>
		</div>

	</form:form>
</body>
</html>






