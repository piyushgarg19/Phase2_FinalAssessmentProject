<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.util.*, java.sql.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Search Results</title>
</head>
<body>
    <h2>Search Results</h2>
    <sql:setDataSource var="snapshot" driver="com.mysql.cj.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/railway" user="root" password="Piyush@19" />
    
    <c:set var="keyword" value="${param.keyword}" />
    
    <sql:query dataSource="${snapshot}" var="result">
         SELECT * FROM adminhome
    WHERE Name LIKE CONCAT('%', ?, '%') OR Address LIKE CONCAT('%', ?, '%')
        <sql:param value="${keyword}" />
        <sql:param value="${keyword}" />
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
            </tr>
        </c:forEach>
    </table>
</body>
</html>