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
	<h1>BankBook Update Page</h1>
	<form class="frm" action="./update" method="post" >
		<input class="input_field" type="hidden" name="bookNumber" value="${update.bookNumber}" readonly="readonly">
		BookName <input class="input_field" type="text" name="bookName" value="${update.bookName}">
		BookContents <textarea class="input_field" name="bookContents" rows="10" cols="">${update.bookContents}</textarea>
		BookRate <input class="input_field" type="text" name="bookRate" value="${update.bookRate}">
		
		<div class="radio_field">
		BookSale 
			<label>판매</label><input type="radio" name="bookSale" value="1">	
			<label>판매중지</label><input type="radio" name="bookSale" value="0">
		</div>
		
		<input class="submit_class" type="submit" value="UPDATE">
	</form>
</body>
</html>