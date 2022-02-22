<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/form.css">
</head>
<body>
	<h1>Member Login Page</h1>
	
	<div>
		<form class = "frm" action="./login" method="post">
			<fieldset>
				<legend>ID</legend>
				<input type="text" name="id" value="${cookie.remember.value}">	
			</fieldset>
			
			<fieldset>
				<legend>Password</legend>
				<input type="password" name="pw">
			</fieldset>
		
			<fieldset>
				<legend>Remember Me</legend>
				<input type="checkbox" name="remember" value="1">
			</fieldset>
			<button type="submit">LOGIN</button>			
			
		</form>
			
	</div>
</body>
</html>