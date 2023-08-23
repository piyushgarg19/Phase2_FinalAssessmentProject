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
<title>Favorite Crossing</title>
</head>
<body>
	<h2>Favorite Crossing</h2>
	<a href="userhome.jsp">Home</a>
	<br>
	<a href="search.jsp">Search Crossing</a>
	<br>
	<br>

	<sql:setDataSource var="snapshot" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/railway" user="root"
		password="Piyush@19"/>

	<sql:query dataSource="${snapshot}" var="favorites">
        SELECT * FROM favorites;
    </sql:query>

	<c:if test="${not empty favorites.rows}">
		<div>
			<h3>Favorites:</h3>
			<c:forEach var="favorite" items="${favorites.rows}">
				<div>
					<p>
						<b>Sr.No:</b>
						<c:out value="${favorite.id}" />
					</p>
					<p>
						<b>Name:</b>
						<c:out value="${favorite.Name}" />
					</p>
					<p>
						<b>Address:</b>
						<c:out value="${favorite.Address}" />
					</p>
					<p>
						<b>Landmark:</b>
						<c:out value="${favorite.Landmark}" />
					</p>
					<p>
						<b>Time Schedule:</b>
						<c:out value="${favorite.Trainschedule}" />
					</p>
					<p>
						<b>Person In-Charge:</b>
						<c:out value="${favorite.pname}" />
					</p>
					<p>
						<b>Status:</b>
						<c:out value="${favorite.status}" />
					</p>
					<hr>
				</div>
				<form action="RemoveFromFavorite" method="POST">
					<input type="hidden" name="id" value="${favorite.id}" /> <input
						type="submit" value="Remove from Favorite" />
				</form>
			</c:forEach>
		</div>
	</c:if>
	<c:if test="${empty favorites.rows}">
		<p>No favorite crossings.</p>
	</c:if>
</body>
</html>