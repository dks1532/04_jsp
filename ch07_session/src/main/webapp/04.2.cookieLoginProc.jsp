<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="regMgr" class="session07.RegisterMgr"/>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pwd");
	
	if(regMgr.loginRegister(id, pw)) {
		Cookie cookie = new Cookie("idKey", id);
		response.addCookie(cookie);
%>
	<script>
		alert("로그인이 되었습니다");
		location.href = "04.3.cookieLoginOK.jsp";
	</script>
<%	
	} else {
%>
	<script>
		alert("로그인이 되지 않았습니다");
		location.href = "04.1.cookieLogin.jsp";
	</script>
<%
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>