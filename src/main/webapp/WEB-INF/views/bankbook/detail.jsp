<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/header_css.jsp"></c:import>
<link rel="stylesheet" href="../resources/css/table.css">
</head>
<body>
	<h1>BankBook Detail Page</h1>
	
	<table>
		<tr class="nav_table">
			<td>번호</td>
			<td>상품명</td>
			<td>상품 설명</td>
			<td>이자율</td>
			<td>판매 여부</td>
		</tr>
		
		<tr>
			<td>${detail.bookNumber}</td>
			<td>${detail.bookName}</td>
			<td>${detail.bookContents}</td>
			<td>${detail.bookRate}</td>
			<td>${detail.bookSale}</td>
		</tr>            
		
	</table>
	
	<a class="a_class" href="./list">List</a>
	<a class="a_class" href="./update?bookNumber=${detail.bookNumber}">Update</a>
	<a class="a_class" href="./delete?bookNumber=${detail.bookNumber}">Delete</a>
</body>
</html>