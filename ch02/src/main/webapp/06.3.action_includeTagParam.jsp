<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String siteName = request.getParameter("siteName");
	String siteTel = request.getParameter("siteTel");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	include ActionTag의 3번째 페이지<br>
	사이트명 : <%=siteName %><br>
	사이트 Tel : <%=siteTel %>
</body>
</html>