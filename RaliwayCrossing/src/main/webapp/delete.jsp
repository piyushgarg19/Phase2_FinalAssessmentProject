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
<title>Delete Record</title>
<style>
body {
	text-align: center;
}

h2 {
	color: #333;
}

form {
	display: inline-block;
	text-align: left;
}

label {
	display: block;
	margin-bottom: 10px;
}

input[type="text"], input[type="submit"] {
	padding: 8px;
	border-radius: 4px;
	border: 1px solid #ccc;
}

input[type="submit"] {
	background-color: #f2f2f2;
	color: #333;
	transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
	background-color: #ddd;
}
</style>
</head>
<body>
	<h2>Delete Record</h2>
	<sql:setDataSource var="snapshot" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/railway" user="root"
		password="Piyush@19" />

	<c:if test="${not empty param.id}">
		<sql:query dataSource="${snapshot}" var="result">
            SELECT * FROM adminhome WHERE id = ?
            <sql:param value="${param.id}" />
		</sql:query>

		<c:if test="${not empty result.rows}">
			<c:forEach var="row" items="${result.rows}">

				<form action="DeleteRecord" method="GET">
					<input type="hidden" name="id" value="${row.id}" /> <label
						for="id">Record Sr.No:</label> <input type="text" id="id"
						name="id" value="${row.id}" required><br>
					<br> <input type="submit" value="Confirm Delete">
				</form>
			</c:forEach>
		</c:if>
	</c:if>
</body>
</html>