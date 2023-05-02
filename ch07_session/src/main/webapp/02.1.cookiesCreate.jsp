<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	Cookie cookie1 = new Cookie("NAME", "KH");
	Cookie cookie2 = new Cookie("GENDER", "MALE");
	Cookie cookie3 = new Cookie("AGE", "23");
	
	response.addCookie(cookie1);
	response.addCookie(cookie2);
	response.addCookie(cookie3);
	*/
	
	response.addCookie(new Cookie("NAME", "KH"));
	response.addCookie(new Cookie("GENDER", "MALE"));
	response.addCookie(new Cookie("AGE", "23"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Cookie를 이용한 세션연결</h1>
	쿠키를 만듭니다<p/>
	쿠키 내용은 <a href="02.2.testCookies.jsp">클릭하세요</a>
</body>
</html>