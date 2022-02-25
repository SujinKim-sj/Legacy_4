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
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<h1>Notice List Page</h1>
	
	<table>
		<tr class="nav_table">
			<td>제목</td>
			<td>내용</td>
			<td>작성자</td>
		</tr>

		<c:forEach items="${list}" var="notice">
			<tr>
				<td><a href="./detail?noticeNum=${notice.noticeNum}">${notice.noticeTitle}</a></td>
			    <td>${notice.noticeContents}</td>
			    <td>${notice.noticeWriter}</td>
			</tr>            
		</c:forEach>

	</table>
	
	<div>
		<c:if test="${pager.pre}">
			<a href="./list?page=${pager.startNum-1}">PREVIEW</a>
		</c:if>

		<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
			<a href="./list?page=${i}">${i}</a>
		</c:forEach>

		<c:if test="${pager.next}">
			<a href="./list?page=${pager.lastNum+1}">NEXT</a>
		</c:if>
	</div>
	
	<a href="./add">ADD</a>
	
</body>
</html>