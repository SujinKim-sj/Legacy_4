<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
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
		<form class="frm" action="./join" method="post" id="frm" enctype="multipart/form-data">
			<fieldset>
				<legend>ID</legend>
				<input type="text" name="id" id="id1">
				<div id="idResult"></div>		
			</fieldset>
			
			<fieldset>
				<legend>Password</legend>
				<input type="password" name="pw" placeholder="8글자 이상 12글자 이하로 작성" id="pw">
				<div id="pwResult"></div>
			</fieldset>
			
			<fieldset>
				<legend>Password 확인</legend>
				<input type="password" name="pw2" placeholder="8글자 이상 12글자 이하로 작성" id="pw2">
				<div id="pwResult2"></div>
			</fieldset>
			
			<fieldset>
				<legend>Name</legend>
				<input type="text" name="name" id="name">
			</fieldset>
			
			<fieldset>
				<legend>Phone</legend>
				<input type="text" name="phone" id="phone">
			</fieldset>
			
			<fieldset>
				<legend>Email</legend>
				<input type="text" name="email" id="email">
			</fieldset>
			
			<fieldset>
				<legend>Photo</legend>
				<input type="file" name="photo" id="photo">
			</fieldset>
			
			<fieldset>
			<!-- 최종완성시 사용하세요 <button class="submit-class" type="button" id="btn">JOIN</button> -->
				<button class="submit-class" type="submit" id="btn">JOIN</button>	
			</fieldset>
	 		
		</form>
			
	</div>
	
	<!-- <script src="../resources/js/join2.js"></script> -->
</body>
</html>