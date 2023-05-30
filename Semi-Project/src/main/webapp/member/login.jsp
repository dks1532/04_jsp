<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("idKey");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body bgcolor="#E4F7BA">
<% if(id != null) { %>
	<div align="center">
		<br><br><br>
		<h3><%=id %>님 환영합니다</h3>
		<p>어제보다 나은</p>
		<p>오늘을 응원합니다.</p>
		<p>즐거운 하루 되세요.</p>
		<a href="../index.jsp" class="btn btn-primary">홈으로</a>&emsp;
		<a href="logout.jsp" class="btn btn-danger">로그아웃</a>
	</div>
<% } else { %>

	<form name = "loginFrm" method="post" action="loginProc.jsp">
		<br><br>
		<table align="center" class="form-group" class="form-group">
			<tr>
				<th colspan="2">로그인</th>
			</tr>
			<tr>
				<td>아 이 디</td>
				<td><input name="id" required></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type = "password" name="pwd" required></td>
			</tr>
			<tr>
				<td align="center" colspan="2">
					<input type="submit" value="로그인" class="btn btn-primary">
					<input type="button" value="회원가입" onclick="location.href='member.jsp'" class="btn btn-primary">
					<input type="button" value="홈으로" onclick="location.href='../index.jsp'" class="btn btn-primary">
				</td>
			</tr>
		</table>
	</form>
<% } %>
</body>
</html>