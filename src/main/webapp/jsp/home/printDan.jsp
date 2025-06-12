<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<%
    String color = request.getParameter("color");
    %>
</head>
<body>
	<div>페이지 보여줘1111</div>
	

<h1>Welcome, ${request.getParameter("color")}</h1>
</body>
</html>