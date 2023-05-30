<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
<style>
	th{padding:5px;}
	.btn {
	  padding: 10px 20px;
	  background-color: #007bff;
	  color: #fff;
	  border: none;
	  cursor: pointer;
	}
</style>
</head>
<body bgcolor="#FFFFE0">
	<form method="post" name="postFrm" action="boardPost" enctype="multipart/form-data">
		<table align="center">
			<tr>
				<th colspan="2" bgcolor="#98FB98">글 쓰 기</th>
			</tr>
			<tr>
				<td width="20%">성 명</td>
				<td width="80%"><input name="name"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input name="subject" size=40 required></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="content" rows= "30" cols= "70" required></textarea></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pass" required></td>
			</tr>
			<tr>
				<td>파일찾기</td>
				<td><input type="file" name="filename"></td>
			</tr>
			<tr>
				<td colspan="2"><hr></td>
			</tr>
			<tr>
				<th colspan="2">
					<input type="submit" value="등록" class="btn">&emsp;
					<input type="reset" value="다시쓰기" class="btn">&emsp;
					<input type="button" value="리스트" onclick="location.href='list.jsp'" class="btn">
				</th>
			</tr>
		</table>
		<input type="hidden" name="ip" value="<%=request.getRemoteAddr() %>">
	</form>
</body>
</html>