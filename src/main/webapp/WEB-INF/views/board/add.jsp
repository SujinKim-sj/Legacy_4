<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/header_css.jsp"></c:import>
<link href="../resources/css/form.css" rel="stylesheet" />
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<h1 class="title">${board} Add Page</h1>
	<form class="frm" action="./add" method="post" enctype="multipart/form-data">
		Title<input type="text" name="title">
		Contents <textarea name="contents" rows="10" cols="70"></textarea>
		Writer <input type="text" name="writer">
		
		<div>
			<input type="file" name="files">
			<input type="file" name="files">
			<input type="file" name="files">	
		</div>
		<input type="submit" value="ADD">
	</form> 
</body>
</html>