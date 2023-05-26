<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "board.BoardBean" %>    
<%
	int num = Integer.parseInt(request.getParameter("num"));
	String nowPage = request.getParameter("nowPage");
	
	BoardBean bean = (BoardBean)session.getAttribute("bean");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	th{padding:5px; }
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
	<form method="post" name="updateFrm" action="boardUpdate">
		<table align="center">
			<tr>
				<th colspan="2" bgcolor="darkorange">수정하기</th>
			</tr>
			<tr>
				<td width="20%">성 명</td>
				<td width="80%"><input name="name" value="<%=bean.getName() %>"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input name="subject" value="<%=bean.getSubject() %> "></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="content" rows= "30" cols= "70"><%=bean.getContent() %></textarea></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pass">&emsp;수정시에는 비밀번호가 필요합니다.</td>
			</tr>
			<tr>
				<td colspan="2"><hr></td>
			</tr>
			<tr>
				<th colspan="2">
					<input type="submit" value="수정완료" class="btn">&emsp;
					<input type="reset" value="다시수정" class="btn">&emsp;
					<input type="button" value="뒤로" onclick="history.go(-1)" class="btn">
				</th>
			</tr>
		</table>
		<input type="hidden" name="num" value="<%=num %>">
		<input type="hidden" name="nowPage" value="<%=nowPage %>">
	</form>
</body>
</html>