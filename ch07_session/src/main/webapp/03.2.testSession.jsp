<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Enumeration en = session.getAttributeNames();
	while(en.hasMoreElements()) {
		String name = (String)en.nextElement();
		String value = (String)session.getAttribute(name);
		out.print("session name : " + name + "</p>");
		out.print("session value : " + value +"</p>");
	}
%>
</body>
</html>