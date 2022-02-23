<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/header_css.jsp"></c:import>
<link href="../resources/css/form.css" rel="stylesheet">
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<h1>Notice Add Page</h1>
	
	<form class="frm" action="./add" method="post">
		NoticeTitle<input class="input_field" type="text" name="noticeTitle">
		NoticeContents <textarea class="input_field" name="noticeContents" rows="10" cols=""></textarea>
		NoticeWriter <input class="input_field" type="text" name="noticeWriter">

		<input class="submit_class" type="submit" value="ADD">
	</form> 
</body>
</html>