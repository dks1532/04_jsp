<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="userErrorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int zero = 0, one = 2;
%>
<h1>Page ErrorPage</h1>
one과 zero의 사칙연산<p/>
one+zero=<%=one+zero %><p/>
one-zero=<%=one-zero %><p/>
one*zero=<%=one*zero %><p/>
one/zero=<%=one/zero %><p/>
</body>
</html>