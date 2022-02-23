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
	<h1>BankBook Add Page</h1>
	<form class = "frm" action="./update" method="post">
		<label>BookName</label>
		<input class="input_field" type="text" name="bookName">
		
		<label>BookContents</label>
		<textarea  class="input_field" name="bookContents" rows="10" cols=""></textarea>
		BookRate <input class="input_field" type="text" name="bookRate">
		BookSale 
		<div class="radio_field">
			<label>판매</label><input type="radio" name="bookSale" value="1">	
			<label>판매중지</label><input type="radio" name="bookSale" value="0">
		</div>
		
		<input class="submit_class" type="submit" value="ADD">
	</form>
</body>
</html>