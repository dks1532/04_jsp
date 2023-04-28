<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="script.js"></script>
</head>
<body>
	<table border="1">
		<form method="post" name="regFrm" action="02.2.MemProc.jsp">
			<tr>
				<th colspan="3">회원가입</th>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input name="id"></td>
				<td>아이디를 적어주세요(20자 이내로 한글 안됨)</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pw"></td>
				<td>비밀번호를 적어주세요(문자,숫자,특수기호가 반드시 1개이상 넣으세요</td>
			</tr>
			<tr>
				<td>비밀번호확인</td>
				<td><input type="password" name="rePw"></td>
				<td>위에넣은 비밀번호와 동일한 비밀번호를 넣으세요</td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input name="name"></td>
				<td>이름을 넣으세요</td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><input name="birthday"></td>
				<td>생년월일을 넣으세요(ex. 2002/04/28)</td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="email" name="email"></td>
				<td>이메일을 넣으세요</td>
			</tr>
			<tr>
				<td colspan="3" align="center">
					<input type="button" value="회원가입" onclick="inputCheck();">
					<input type="reset" value="다시쓰기">
				</td>
			</tr>
		</form>
	</table>
</body>
</html>