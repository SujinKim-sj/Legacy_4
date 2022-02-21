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
	
	<form action="./add" method="post">
		NoticeTitle<input type="text" name="noticeTitle">
		NoticeContents <textarea name="noticeContents" rows="10" cols=""></textarea>
		NoticeWriter <input type="text" name="noticeWriter">

		<input type="submit" value="ADD">
	</form> 
</body>
</html>