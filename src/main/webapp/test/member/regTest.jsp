<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
<style>
body {
	font-family: snas-serif;
	text-align: center;
}

table {
	margin: 0 auto;
	border-collapse: collapse;
}

td {
	padding: 8px;
}

select {
	width: 100%;
}

button {
	padding: 8px 16px;
	margin-top: 20px;
}
</style>

<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String birth = request.getParameter("birth");
String carrier = request.getParameter("carrier");
String phone = request.getParameter("phone");
%>
</head>
<body>
	<form action="" method="post">

		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" id="id" value="<%=id%>"
					readonly /></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pw" id="pw" /></td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td><input type="password" id="pwCheck" /></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" id="name" value="<%=name%>" /></td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><input type="text" name="birth" id="birth"
					value="<%=birth%>" placeholder="예: 2020-01-01" /></td>
			</tr>
			<tr>
				<td>통신사</td>
				<td><select name="carrier">
						<option value="KT" ${param.carrier == 'KT' ? 'selected' : ''}>KT</option>
						<option value="SKT" ${param.carrier == 'SKT' ? 'selected' : ''}>SKT</option>
						<option value="LGU+" ${param.carrier == 'LGU+' ? 'selected' : ''}>LGU+</option>
				</select></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="phone" id="phone"
					value="<%=phone%>" placeholder="예: 000-0000-0000" /></td>
			</tr>
		</table>
		<button type="submit">정보수정</button>
	</form>
</body>
</html>