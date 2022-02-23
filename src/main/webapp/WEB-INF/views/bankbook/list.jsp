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
<c:import url="../template/header.jsp"></c:import>
	<h1>BankBook List Page</h1>
	<!-- <h1>${list}</h1> -->
	
	<!-- bookName, bookRate, bookSale -->
	<table>
		<tr class="nav_table">
			<td>상품명</td>
			<td>이자율</td>
			<td>판매 여부</td>
		</tr>
		
		<c:forEach items="${list}" var="bankbook">
			<tr>
				<td><a href="./detail?bookNumber=${bankbook.bookNumber}">${bankbook.bookName}</a></td>
			    <td>${bankbook.bookRate}</td>
			    <td>${bankbook.bookSale}</td>
			</tr>            
		</c:forEach>
		
	</table>
	
	<a class="a_class" href="./add">ADD</a>
	
</body>
</html>