<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="notesbean" class="boardNotes.BoardBean" scope="session" />    
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
	<form method="post" name="boardReply" action="boardReply">
		<table align="center">
			<tr>
				<th colspan="2" bgcolor="lightpink">답변하기</th>
			</tr>
			<tr>
				<td width="20%">분 류</td>
				<td width="80%"><input name="name" required></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input name="subject" value="답변 : <%=notesbean.getSubject() %>" size=40 required></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="content" rows= "30" cols= "70" required>
					<%=notesbean.getContent() %>
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
					<input type="submit" value="답변등록" class="btn">&emsp;
					<input type="reset" value="다시쓰기" class="btn">&emsp;
					<input type="button" value="뒤로" onclick="history.back()" class="btn">
				</th>
			</tr>
		</table>
		
		<!-- 나의 정보 -->
		<input type="hidden" name="ip" value="<%=request.getRemoteAddr() %>">
		
		<!-- 앞에서 넘어온 값 -->
		<input type="hidden" name="nowPage" value="<%=nowPage %>">
		
		<!-- 부모글의 정보 -->
		<input type="hidden" name="ref" value="<%=notesbean.getRef() %>">
		<input type="hidden" name="pos" value="<%=notesbean.getPos() %>">
		<input type="hidden" name="depth" value="<%=notesbean.getDepth() %>">
		
	</form>
</body>
</html>