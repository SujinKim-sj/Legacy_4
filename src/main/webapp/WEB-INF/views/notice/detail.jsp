<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/s1/resources/css/reset.css">
<link rel="stylesheet" href="/s1/resources/css/header.css">
</head>
<body>
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

	<a href="./list">List</a>
</body>
</html>