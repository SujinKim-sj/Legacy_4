<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/header_css.jsp"></c:import>
<link rel="stylesheet" href="../resources/css/table.css">
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<h1>Notice Detail Page</h1>
	
	<table>
		<tr class="nav_table">
			<td>번호</td>
			<td>제목</td>
			<td>내용</td>
			<td>작성자</td>
			<td>작성일</td>
			<td>조회수</td>
		</tr>

		<tr>
			<td>${detail.noticeNum}</td>
			<td>${detail.noticeTitle}</td>
			<td>${detail.noticeContents}</td>
			<td>${detail.noticeWriter}</td>
			<td>${detail.noticeRegDate}</td>
			<td>${detail.noticeHit}</td>
		</tr>            
		
	</table>

	<a class="a_class" href="./list">List</a>
	<a class="a_class" href="./update?noticeNum=${detail.noticeNum}">Update</a>
</body>
</html>