<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info = "JSP 현재 페이지 정보" %>
<%@ page session = "false"%>
<%@ page buffer = "16kb"%>
<%@ page autoFlush = "true"%>
<%@ page import = "java.util.*"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Page 지시자 info</h1>
	<%=this.getServletInfo() %>
	
	<h1>Page 지시자 import</h1>
	<%
		Date date = new Date();
	%>
	현재 시간과 날짜 ? <%=date.toLocaleString() %>
</body>
</html>