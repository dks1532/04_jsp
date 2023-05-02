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
   String id = "";
   Cookie[] cookies = request.getCookies();
   for(int i = 0; i < cookies.length; i++) {
      if(cookies[i].getName().equals("idKey")) {
         id = cookies[i].getValue();
      }
   }
   
   if(!id.equals("")) { // 로그인이 되어있는 상태
%>
      <script>
         alert("이미 로그인이 되어있습니다.");
         location.href="04.3.cookieLoginOK.jsp"
      </script>
<%
	} else {
%>
	<h1>Cookie 로그인</h1>
	<form method="post" action="04.2.cookieLoginProc.jsp">
		ID : <input name="id" required><p/>
		PW : <input type="password" name="pwd" required><p/>
		<input type="submit" value="로그인">
		<input type="reset" value="초기화">
	</form>
<% } %>
</body>
</html>