<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	th{padding:5px;}
</style>
</head>
<body bgcolor="#FFFFE0">
	<table align="center">
		<tr>
			<th colspan="2" bgcolor="darkorange">수정하기</th>
		</tr>
		<tr>
			<td width="20%">성명</td>
			<td width="80%"><input name="name"></td>
		</tr>
		<tr>
			<td>제목</td>
			<td><input name="subject"></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea name="content" rows= "10" cols= "50"></textarea></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="pass"> 수정시에는 비밀번호가 필요합니다.</td>
		</tr>
		<tr>
			<td colspan="2"><hr></td>
		</tr>
		<tr>
			<th colspan="2">
				<input type="submit" value="수정완료">&emsp;
				<input type="reset" value="다시수정">&emsp;
				<input type="button" value="뒤로" onclick="location.href='list.jsp'">
			</th>
		</tr>
	</table>
</body>
</html>