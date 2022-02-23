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
	<h1>Member Update Page</h1>
	
	<form action="./update" method="post">
		<input type="hidden" name="id" value="${member.id}">
		MemberName<input type="text" name="name" value="${member.name}">
		MemberPhone <input type="text" name="phone" value="${member.phone}">
		MemberEmail <input type="text" name="email" value="${member.email}">
		
		<button type="submit">UPDATE</button>
	</form> 
</body>
</html>