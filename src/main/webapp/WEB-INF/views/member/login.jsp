<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/header_css.jsp"></c:import>
<link rel="stylesheet" href="../resources/css/form.css">
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<h1>Member Login Page</h1>
	
	<div>
		<form class = "frm" action="./login" method="post">
			<fieldset>
				<legend>ID</legend>
				<input class="input_field" type="text" name="id" value="${cookie.remember.value}">	
			</fieldset>
			
			<fieldset>
				<legend>Password</legend>
				<input class="input_field" type="password" name="pw">
			</fieldset>
		
			<fieldset>
				<legend>Remember Me</legend>
				<input class="check_field" type="checkbox" name="remember" value="1">
			</fieldset>
			<button class="submit_class" type="submit">LOGIN</button>			
			
		</form>
			
	</div>
</body>
</html>