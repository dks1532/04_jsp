<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Include ActionTag Param</h1>
	<jsp:include page="06.3.action_includeTagParam.jsp"/>
	
	<hr>
	include ActionTag의 body입니다<br>
</body>
</html>