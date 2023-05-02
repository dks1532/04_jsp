<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("idKey");
	if(id != null) {
%>
<script>
	alert("이미 로그인이 되었습니다");
	location.href = "05.3.sessionLoginOK.jsp";
</script>
<% } else { %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Session 로그인</h1>
	<form method="post" action="05.2.sessionLoginProc.jsp">
		ID : <input name="id" required><p/>
		PW : <input type="password" name="pwd" required><p/>
		<input type="submit" value="로그인">
		<input type="reset" value="초기화">
	</form>
<% } %>
</body>
</html>