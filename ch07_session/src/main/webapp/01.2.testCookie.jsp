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
	Cookie[] cookies = request.getCookies();
	if(cookies != null) {
		for(int i=0; i<cookies.length; i++) {
			out.print("Cookie name : " + cookies[i].getName() + "<p/>");
			out.print("Cookie value : " + cookies[i].getValue() + "<p/><hr>");
		}
	}
%>

<%--
<%
	Cookie[] cookies2 = request.getCookies();
	if(cookies != null) {
		for(int i=0; i<cookies2.length; i++) {
%>
			Cookie name : <%=cookies2[i].getName() %><p/>
			Cookie value : <%=cookies2[i].getValue() %> <p/><hr>
<%
		}
	}
%>
--%>
</body>
</html>