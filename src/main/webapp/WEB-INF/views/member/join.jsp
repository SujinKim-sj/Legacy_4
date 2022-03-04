<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/form.css">
</head>
<body>
	<h1>Member Join Page</h1>
	
	<div>
		<form class="frm" action="./join" method="post" id="frm">
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
			
			<button type="button" id="btn">JOIN</button>
		</form>
			
	</div>
	
	<script src="../resources/js/join2.js"></script>
</body>
</html>