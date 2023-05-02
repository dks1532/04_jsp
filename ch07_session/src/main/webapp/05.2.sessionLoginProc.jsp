<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="regMgr" class="session07.RegisterMgr"/>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pwd");
	
	if(regMgr.loginRegister(id, pw)) {
		session.setAttribute("idKey", id);
%>
	<script>
		alert("로그인이 되었습니다");
		location.href = "05.3.sessionLoginOK.jsp";
	</script>
<%	
	} else {
%>
	<script>
		alert("로그인이 되지 않았습니다");
		location.href = "05.1.sessionLogin.jsp";
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