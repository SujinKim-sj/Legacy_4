<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>BankBook List Page</h1>
	<!-- <h1>${list}</h1> -->
	
	<!-- bookName, bookRate, bookSale -->
	<table border="1">
		<tr>
			<th>상품명</th>
			<th>이자율</th>
			<th>판매 여부</th>
		</tr>
		
		<c:forEach items="${list}" var="bankbook">
			<tr>
				<td><a href="./detail?bookNumber=${bankbook.bookNumber}">${bankbook.bookName}</a></td>
			    <td>${bankbook.bookRate}</td>
			    <td>${bankbook.bookSale}</td>
			</tr>            
		</c:forEach>
		
	</table>
	
	<a href="./add">ADD</a>
	
</body>
</html>