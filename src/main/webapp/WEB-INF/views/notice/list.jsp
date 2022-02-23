<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/header_css.jsp"></c:import>
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

	<a href="./add">ADD</a>
	
</body>
</html>