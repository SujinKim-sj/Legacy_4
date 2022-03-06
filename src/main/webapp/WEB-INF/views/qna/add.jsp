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

	<h1 class="h1-class">QnA Add Page</h1>
	
	<form class="frm" action="./add" method="post">
		Title <input class="input-field" type="text" name="title">
		Contents <textarea class="input-field" name="contents" rows="10" cols=""></textarea>
		Writer <input class="input-field" type="text" name="writer">
		
		<button class="submit-class" type="submit">ADD</button>
	</form>
</body>
</html>