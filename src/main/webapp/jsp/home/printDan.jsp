<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%
String inputDan = request.getParameter("dan");
String inputLimit = request.getParameter("limit");
String inputColor = request.getParameter("color");

if (inputDan == null || inputDan == "") {
	inputDan = "1";
}

if (inputLimit == null || inputLimit == "") {
	inputLimit = "9";
}

if (inputColor == null || inputColor == "") {
	inputColor = "inherit";
}

int dan = Integer.parseInt(inputDan);
int limit = Integer.parseInt(inputLimit);
%>


</head>
<body>


	<h1>구구단</h1>
	<div>
		<div style="color:${color};">
			===
			<%=dan%>
			단 ===
		</div>
		<%
		for (int i = 1; i <= limit; i++) {
		%>
		<div style="color:<%=inputColor%>;"><%=dan%>
			*
			<%=i%>
			=
			<%=dan * i%></div>
		<%
		}
		%>
	</div>


	<%-- <div>페이지 보여줘 @@@</div>
	<h1>
		=====<%=dan%>단 ====
		=====${dan}단 ====
	</h1>

	<%
	for (int i = 1; i <= limit; i++) {
	%>
	<div><%=dan%>
		*
		<%=i%>
		=
		<%=dan * i%></div>
	<%
	}
	%>
 --%>
</body>
</html>