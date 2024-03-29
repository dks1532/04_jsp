<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="bean" class="board.BoardBean" scope="session" />    
<%
	String nowPage = request.getParameter("nowPage");
%>
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
	<form method="post" name="boardReply" action="boardReply">
		<table align="center">
			<tr>
				<th colspan="2" bgcolor="lightpink">답변하기</th>
			</tr>
			<tr>
				<td width="20%">성 명</td>
				<td width="80%"><input name="name"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input name="subject" value="답변 : <%=bean.getSubject() %>"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="content" rows= "10" cols= "50">
					<%=bean.getContent() %>
					============== 답변 글을 쓰세요 ==============
					</textarea>
				</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pass" required></td>
			</tr>
			<tr>
				<td colspan="2"><hr></td>
			</tr>
			<tr>
				<th colspan="2">
					<input type="submit" value="답변등록">&emsp;
					<input type="reset" value="다시쓰기">&emsp;
					<input type="button" value="뒤로" onclick="history.back()">
				</th>
			</tr>
		</table>
		
		<!-- 나의 정보 -->
		<input type="hidden" name="ip" value="<%=request.getRemoteAddr() %>">
		
		<!-- 앞에서 넘어온 값 -->
		<input type="hidden" name="nowPage" value="<%=nowPage %>">
		
		<!-- 부모글의 정보 -->
		<input type="hidden" name="ref" value="<%=bean.getRef() %>">
		<input type="hidden" name="pos" value="<%=bean.getPos() %>">
		<input type="hidden" name="depth" value="<%=bean.getDepth() %>">
		
	</form>
</body>
</html>