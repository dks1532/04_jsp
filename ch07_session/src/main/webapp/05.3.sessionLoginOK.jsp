<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("idKey");	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Session 로그인</h1>
	<h2>Login OK Page</h2>
	<%=id %>님이 로그인 하였습니다.<p/>
	홈페이지에 오신걸 환영합니다<p/><p/>
	
	<a href ="05.4.sessionLogout.jsp">로그아웃</a>
</body>
</html>