<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/header_css.jsp"></c:import>
<link href="../resources/css/table.css" rel="stylesheet">
<link href="../resources/css/list.css" rel="stylesheet">
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
	<h1>BankBook Detail Page</h1>
	
	<table class="table-basic">
		<tr>
			<th>번호</th>
			<th>상품명</th>
			<th>상품 설명</th>
			<th>이자율</th>
			<th>판매 여부</th>
		</tr>
		
		<tr>
			<td>${detail.bookNumber}</td>
			<td>${detail.bookName}</td>
			<td>${detail.bookContents}</td>
			<td>${detail.bookRate}</td>
			<td>${detail.bookSale}</td>
		</tr>            
		
	</table>
	
	<a href="./list">List</a>
	<a href="./update?bookNumber=${detail.bookNumber}">Update</a>
	<a href="./delete?bookNumber=${detail.bookNumber}">Delete</a>
</body>
</html>