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
	<h1>Member Join Page</h1>
	
	<div>
		<form class = "frm" action="./join" method="post">
			<fieldset>
				<legend>ID</legend>
				<input class="input_field" type="text" name="id">			
			</fieldset>
			
			<fieldset>
				<legend>Password</legend>
				<input class="input_field" type="password" name="pw">
			</fieldset>
			
			<fieldset>
				<legend>Name</legend>
				<input class="input_field" type="text" name="name">
			</fieldset>
			
			<fieldset>
				<legend>Phone</legend>
				<input class="input_field" type="text" name="phone">
			</fieldset>
			
			<fieldset>
				<legend>Email</legend>
				<input class="input_field" type="text" name="email">
			</fieldset>
			
			<button class="submit_class" type="submit">JOIN</button>
		</form>
			
	</div>

</body>
</html>