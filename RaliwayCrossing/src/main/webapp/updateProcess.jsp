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
<title>Update Crossing Process</title>
</head>
<body>
	<h2>Update Crossing Process</h2>
	<sql:setDataSource var="snapshot" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/railway" user="root"
		password="Piyush@19" />

	<c:if test="${not empty param.id}">
		<sql:update dataSource="${snapshot}">
            UPDATE adminhome SET Name=?, Address=?, Landmark=?, Trainschedule=?, pname=?, status=?
            WHERE id=?
            <sql:param value="${param.Name}" />
			<sql:param value="${param.Address}" />
			<sql:param value="${param.Landmark}" />
			<sql:param value="${param.Trainschedule}" />
			<sql:param value="${param.pname}" />
			<sql:param value="${param.status}" />
			<sql:param value="${param.id}" />
		</sql:update>
		<script>
			window.location.href = "adminhome.jsp";
		</script>
	</c:if>

	<a href="adminhome.jsp">Back to Admin Home</a>
</body>
</html>