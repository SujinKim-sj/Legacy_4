<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/s1/resources/css/reset.css">
<link rel="stylesheet" href="/s1/resources/css/header.css">
</head>
<body>
	<h1>Notice Add Page</h1>
	
	<form action="./add" method="post" id="frm">
		NoticeTitle<input type="text" name="noticeTitle" id="title">
		NoticeContents <textarea name="noticeContents" rows="10" cols=""></textarea>
		NoticeWriter <input type="text" name="noticeWriter" id="writer">

		<input type="button" value="ADD" id="btn">
	</form>
	<script src="../resources/js/notice.js"></script>
</body>
</html>