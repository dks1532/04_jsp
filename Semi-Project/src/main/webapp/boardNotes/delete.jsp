<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="boardNotes.BoardBean" %>    
<jsp:useBean id="nMgr" class="boardNotes.BoardMgr" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	th{padding:5px; background-color: #476600;}
	.color{background-color: #E9FFA2; width:15%; text-align: center;}
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
<%
	int num = Integer.parseInt(request.getParameter("num"));
	String nowPage = request.getParameter("nowPage");
	
	if(request.getParameter("pass") != null) {
		String inPass = request.getParameter("pass");
		BoardBean bean = (BoardBean)session.getAttribute("bean");
		String dbPass = bean.getPass();
		
		if(dbPass.equals(inPass)) {
			boolean result = nMgr.deleteBoard(num);
			if(result) {
				String url = "list.jsp?nowPage="+nowPage;
				out.print("<script>");
				out.print("alert('삭제되었습니다');");
				out.print("</script>");
				response.sendRedirect(url);
				
			} else {
				out.print("<script>");
				out.print("alert('댓글이 있어서 삭제할 수 없습니다');");
				out.print("history.go(-2);");
				out.print("</script>");
			}
		} else {
			out.print("<script>");
			out.print("alert('비밀번호가 맞지않습니다.');");
			out.print("history.go(-1);");
			out.print("</script>");
		}
	} else {
%>
	<form method="get" name="delFrm" action="delete.jsp">
		<table align="center" width="600px">
			<tr>
				<th class="color">사용자의 비밀번호 입력해주세요</th>
			</tr>
			<tr>
				<td height="20px"></td>
			</tr>
			<tr>
				<td align="center"><input type="password" name="pass" required></td>
			</tr>
			<tr>
				<td height="20px"></td>
			</tr>
			<tr>
				<td align="center">
					<input type="submit" value="삭제완료" class="btn">
					<input type="reset" value="다시쓰기" class="btn">
					<input type="button" value="뒤로" onclick="history.go(-1)" class="btn">
				</td>
			</tr>
		</table>
		<input type="hidden" name="num" value="<%=num %>">
		<input type="hidden" name="nowPage" value="<%=nowPage %>">
	</form>
<%		
	}
%>
</body>
</html>
