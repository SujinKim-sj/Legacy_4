<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/header_css.jsp"></c:import>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
	<h1>My Page</h1>
	
	<h3>ID : ${member.id}</h3>
	<h3>NAME : ${member.name}</h3>
	<h3>PHONE : ${member.phone}</h3>
	<h3>EMAIL : ${member.email}</h3>
	
	<h4><a href="./update?id=${member.id}">Update</a></h4>
</body>
</html>