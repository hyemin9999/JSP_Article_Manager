<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>
 input[type='text'] {
 height: 20px;}
 input[type='submit']{
 height: 25px;}

</style>
</head>
<body>
	<form action="/member/login" method="post">

		<input type="text" title="검색" />
		<input type="submit" value="검색" /> 
<!-- 		<input type="submit" value="전송" /> -->
	</form>
</body>
</html>