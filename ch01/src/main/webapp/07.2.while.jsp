<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String msg = request.getParameter("msg");
	int count = Integer.parseInt(request.getParameter("count"));
	
	int i = 1;
	while(count > i) {
%>
		<%=i + ". " + msg %><br>
<%
		i++;
	}
%>
</body>
</html>