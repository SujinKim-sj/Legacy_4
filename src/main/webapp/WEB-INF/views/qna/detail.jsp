<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
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
	
	<div class="table-container">
		<h1 class="title">QnA Detail Page</h1>
		
		<table class="table-basic">
			<tr>
				<td>번호</td>
				<td>제목</td>
				<td>내용</td>
				<td>작성자</td>
				<td>작성일</td>
				<td>조회수</td>
			</tr>
	
			<tr>
				<td>${detail.num}</td>
				<td>${detail.title}</td>
				<td>${detail.contents}</td>
				<td>${detail.writer}</td>
				<td>${detail.regDate}</td>
				<td>${detail.hit}</td>
			</tr>
	
		</table>
		
		<h3>
			<a href="./list">List</a>
			<a href="./update?num=${detail.num}">Update</a>
			<a href="./delete?num=${detail.num}">Delete</a>
		</h3>
	</div>
</body>
</html>