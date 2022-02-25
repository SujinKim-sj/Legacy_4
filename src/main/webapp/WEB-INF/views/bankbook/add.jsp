<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>BankBook Update Page</h1>
	<form action="./add" method="post">
		BookName <input type="text" name="bookName">
		BookContents <textarea name="bookContents" rows="10" cols=""></textarea>
		BookRate <input type="text" name="bookRate">
		BookSale 
		<div>
			판매<input type="radio" name="bookSale" value="1">	
			판매중지<input type="radio" name="bookSale" value="0">
		</div>
		
		<input type="submit" value="ADD">
	</form>
</body>
</html>