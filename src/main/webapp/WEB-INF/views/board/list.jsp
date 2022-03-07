<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/header_css.jsp"></c:import>
<link href="../resources/css/table.css" rel="stylesheet" />
<link href="../resources/css/list.css" rel="stylesheet" />
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<h1 class="title">${board} List Page</h1>
	
	<div class="table-container">
		<table class="table-basic">
			<tr class="nav_table">
				<td>제목</td>
				<td>내용</td>
				<td>작성자</td>
			</tr>
	
			<c:forEach items="${list}" var="notice">
				<tr>
					<td><a href="./detail?num=${notice.num}">${notice.title}</a></td>
				    <td>${notice.contents}</td>
				    <td>${notice.writer}</td>
				</tr>            
			</c:forEach>
	
		</table>
	
		<!-- Paging -->
		<div class="pager-class">
		    <c:if test="${pager.pre}">
		        <a class="page-button" href="./list?page=${pager.startNum-1}">PREVIEW</a>
		    </c:if>
		    <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
		        <a href="./list?page=${i}&kind=${pager.kind}&search=${pager.search}">${i}</a>
		    </c:forEach>
		    <c:if test="${pager.next}">
		        <a class="page-button" href="./list?page=${pager.lastNum+1}">NEXT</a>
		    </c:if>
		</div>
	
		<a href="./add">ADD</a>
	</div>
</body>
</html>