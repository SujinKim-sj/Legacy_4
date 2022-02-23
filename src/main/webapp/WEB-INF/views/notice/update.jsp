<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/header_css.jsp"></c:import>
<link rel="stylesheet" href="../resources/css/form.css">
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<h1>Notice Update Page</h1>
	
	<form class="frm" action="./update" method="post">
		<input class="input_field" type="hidden" name="noticeNum" value="${update.noticeNum}">
		NoticeTitle<input class="input_field" type="text" name="noticeTitle" value="${update.noticeTitle}">
		NoticeContents <textarea class="input_field" name="noticeContents" rows="10" cols="">${update.noticeContents}</textarea>
		NoticeWriter <input class="input_field" type="text" name="noticeWriter" value="${update.noticeWriter}" readonly="readonly">
		<%-- <input type="hidden" name="noticeRegDate" value="${update.noticeRegDate}">
		<input type="hidden" name="noticeHit" value="${update.noticeHit}">
		 --%>
		<input class="submit_class" type="submit" value="UPDATE">
	</form> 
</body>
</html>