<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Login</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
}

form {
	max-width: 400px;
	margin: 0 auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
	text-align: center;
	color: #333;
}

table {
	margin-top: 20px;
	width: 100%;
}

td {
	padding: 10px;
}

input[type="text"], input[type="password"] {
	width: 100%;
	padding: 8px;
	border-radius: 4px;
	border: 1px solid #ccc;
}

input[type="submit"] {
	width: 100%;
	padding: 8px;
	border-radius: 4px;
	background-color: #4CAF50;
	color: #fff;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #45a049;
}

a {
	text-decoration: none;
	color: #333;
}
</style>
</head>
<body>
	<div align=center>
		<h2>User Login</h2>
		<form action="Login" method="POST">
			<table>
				<tr>
					<td>Name:</td>
					<td><input type="text" name="uname" placeholder="UserName"
						required></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name="password"
						placeholder="password" required></td>
				</tr>
				<br>
				<br>
				<tr>
					<td><input type="submit" value="Login"><br>
					<br> <br>Don't have an account?<a href="Registration.jsp">Sign
							In</a></td>
				</tr>
				<tr>
					<td><a href="index.jsp">Back<a></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>