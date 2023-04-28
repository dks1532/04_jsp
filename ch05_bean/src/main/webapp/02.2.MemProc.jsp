<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>    
<jsp:useBean id="regBean" class="ch05Bean.MemberBean"/>
<jsp:setProperty name="regBean" property="*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<th colspan="2">
				<jsp:getProperty property="name" name="regBean"/>회원님이 작성한 내용입니다.
			</th>
		</tr>
		<tr>
			<td>아이디</td>
			<td><jsp:getProperty property="id" name="regBean"/></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><jsp:getProperty property="pw" name="regBean"/></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><jsp:getProperty property="name" name="regBean"/></td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td><jsp:getProperty property="birthday" name="regBean"/></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><jsp:getProperty property="email" name="regBean"/></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="확인완료">&emsp;
				<input type="button" value="다시쓰기" onclick="history.back();">
			</td>
		</tr>
	</table>
</body>
</html>