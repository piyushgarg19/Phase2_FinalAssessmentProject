<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Home</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
	margin: 0;
	padding: 0;
}

h2 {
	text-align: center;
	color: #333;
}

a {
	color: #333;
	text-decoration: none;
}

table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	padding: 10px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

th {
	background-color: #f2f2f2;
}

tr:nth-child(even) {
	background-color: #f9f9f9;
}

.actions {
	display: flex;
	justify-content: space-around;
}

.actions form {
	display: inline-block;
}

input[type="submit"] {
	padding: 6px 12px;
	background-color: #4CAF50;
	color: #fff;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #45a049;
}

.actions {
	white-space: nowrap;
}

.actions form {
	margin-right: 5px;
}

.nav-links {
	display: flex;
	justify-content: space-around;
	margin-bottom: 20px;
}

.nav-links a {
	padding: 10px 10px;
	text-decoration: none;
	color: #333;
	background-color: #f2f2f2;
	border-radius: 4px;
	transition: background-color 0.3s ease;
}

.nav-links a:hover {
	background-color: #ddd;
}
</style>
</head>
<body>
	<h2>Admin Home</h2>
	<div class="nav-links">
		<a href="adminhome.jsp">Home</a> <a href="addrail.jsp">Add Railway
			Crossing</a> <a href="search.jsp">Search Crossing</a> <a href="index.jsp">Logout</a>
	</div>
	<sql:setDataSource var="snapshot" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/railway" 
		user="root"
		password="Piyush@19" />

	<sql:query dataSource="${snapshot}" var="result">
         SELECT * from adminhome;
         </sql:query>

	<table border="1" width="100%">
		<tr>
			<th>Sr.No</th>
			<th>Name</th>
			<th>Address</th>
			<th>Landmark</th>
			<th>Time Schedule</th>
			<th>Person In-Charge</th>
			<th>Status</th>
			<th>Action</th>
		</tr>

		<c:forEach var="row" items="${result.rows}">
			<tr>
				<td><c:out value="${row.id}" /></td>
				<td><c:out value="${row.Name}" /></td>
				<td><c:out value="${row.Address}" /></td>
				<td><c:out value="${row.Landmark}" /></td>
				<td><c:out value="${row.Trainschedule}" /></td>
				<td><c:out value="${row.pname}" /></td>
				<td><c:out value="${row.status}" /></td>
				<td>
					<!-- Action buttons for each row -->
					<form action="update.jsp" method="GET">
						<input type="hidden" name="id" value="${row.id}" /> <input
							type="submit" value="Update" />
					</form>

					<form action="delete.jsp" method="POST">
						<input type="hidden" name="id" value="${row.id}" /> <input
							type="submit" value="Delete" />
					</form>
				</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>