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
	<h1 class="title">${board} Update Page</h1>
	<form class="frm" action="./update" method="post" >
		<input class="input-field" type="hidden" name="num" value="${update.num}" readonly="readonly">
		Title <input class="input-field" type="text" name="title" value="${update.title}">
		Contents <textarea class="input-field" name="contents" rows="10" cols="">${update.contents}</textarea>
		<input class="input-field" type="hidden" name="num" value="${update.writer}" readonly="readonly">
		<input class="submit-class" type="submit" value="UPDATE">
	</form>
</body>
</html>