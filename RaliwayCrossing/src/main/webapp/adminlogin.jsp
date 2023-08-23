<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Login</title>
<style>
body {
	text-align: center;
}

h2 {
	color: #333;
}

form {
	margin-top: 20px;
}

table {
	margin: 0 auto;
}

td {
	padding: 5px;
}

input[type="text"], input[type="password"] {
	padding: 5px;
	border-radius: 4px;
	border: 1px solid #ccc;
}

input[type="submit"] {
	padding: 5px 10px;
	background-color: #f2f2f2;
	border-radius: 4px;
	border: none;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #ddd;
}

a {
	color: blue;
	text-decoration: none;
}
</style>
</head>
<body>
	<div align=center>
		<h2>Admin Login</h2>
		<form action="AdminLogin" method="POST">
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
				<tr>
					<td></td>
					<td><input type="submit" value="Login"><br>
					<br>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>