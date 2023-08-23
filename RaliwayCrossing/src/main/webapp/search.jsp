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
    <title>Search Crossing</title>
</head>
<body>
    <h2>Search Crossing</h2>
    <form action="searchResult.jsp" method="GET">
        <input type="text" name="keyword" placeholder="Enter keyword" />
        <input type="submit" value="Search" />
    </form>
</body>
</html>