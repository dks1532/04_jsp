<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>login과 logout하기</h1>
<%
	String id = (String)session.getAttribute("idKey");
	if(id != null) {
		out.print(id + "님 반갑습니다");
%>
		<p/>
		<a href="05.2.logout.jsp">로그아웃</a>
<%
	} else {
%>	
		<form method="post" action="loginServlet">
			id : <input name="id"><p/>
			pw : <input type="password" name="pwd"><p/>
			<input type="submit" value="로그인">
			<input type="reset">
		</form>
<%
	}
%>
	
</body>
</html>