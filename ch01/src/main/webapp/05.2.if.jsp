<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String msg;
%>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String color = request.getParameter("color");
	
	switch(color) {
	case "blue" :
		msg = "파란색";
		break;
	case "red" :
		msg = "빨간색";
		break;
	case "orange" :
		msg = "오렌지색";
		break;
	default : 
		msg = "기타";
	}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body bgcolor="<%=color %>">
		<b><%=name %></b>님이 좋아하는 색상은 <b><%=msg %></b>입니다
	</body>
</html>

<%--
	if(color.equals("blue")) {
		msg = "파란색";
	} else if(color.equals("red")) {
		msg = "빨간색";
	} else if(color.equals("orange")) {
		msg = "오렌지색";
	} else {
		msg = "기타";
	}
--%>


