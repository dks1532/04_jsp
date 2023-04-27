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
	if(request.getProtocol().equals("HTTP/1.0"))
		response.setHeader("pragma", "no-cache");
	else if (request.getProtocol().equals("HTTP/1.1"))
		response.setHeader("Cache-Control", "no-store");
%>
	04.2.response.jsp파일입니다.
</body>
</html>