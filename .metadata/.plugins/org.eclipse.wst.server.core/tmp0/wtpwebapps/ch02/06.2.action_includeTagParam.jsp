<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
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
	<h1>Include ActionTag Param</h1>
	<jsp:include page="06.3.action_includeTagParam.jsp">
		<jsp:param value="<%=siteName %>" name="siteName"/>
		<jsp:param value="010-1234-5678" name="siteTel"/>
	</jsp:include>
	<hr>
	include ActionTag의 body입니다<br>
	사이트 이름 : <%=siteName %><br>
	사이트 전화 : <%=siteTel %><br>
</body>
</html>