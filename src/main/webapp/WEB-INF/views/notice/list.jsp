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
	<h1>Notice List Page</h1>
	
	<table border="1">
		<tr>
			<th>제목</th>
			<th>내용</th>
			<th>작성자</th>
		</tr>

		<c:forEach items="${list}" var="notice">
			<tr>
				<td><a href="./detail?noticeNum=${notice.noticeNum}">${notice.noticeTitle}</a></td>
			    <td>${notice.noticeContents}</td>
			    <td>${notice.noticeWriter}</td>
			</tr>            
		</c:forEach>

	</table>

	<a href="./add">ADD</a>
	
</body>
</html>