<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.BoardBean" %>
<jsp:useBean id="bMgr" class="board.BoardMgr" />
<%
	request.setCharacterEncoding("UTF-8");
	int num = Integer.parseInt(request.getParameter("num"));
	String nowPage = request.getParameter("nowPage");
	String keyField = request.getParameter("keyField");
	String keyWord = request.getParameter("keyWord");
	
	bMgr.upCount(num);
	BoardBean bean = bMgr.getBoard(num);
	session.setAttribute("bean", bean);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	th{padding: 5px; color:white; background-color:#476600;}
	.color{background-color: #E9FFA2; width:15%; text-align: center;}
</style>
<script>
	function download(filename) {
		downFrm.filename.value = filename;
		downFrm.submit();
	}
	function list() {
		listFrm.submit();
	}
</script>
</head>
<body>
	<table align="center" width="600px">
		<tr>
			<th colspan="4">글 읽 기</th>
		</tr>
		<tr>
			<td class="color">이름</td>
			<td><%=bean.getName() %></td>
			<td class="color">등록날짜</td>
			<td><%=bean.getRegdate() %></td>
		</tr>
		<tr>
			<td class="color">제목</td>
			<td colspan="3"><%=bean.getSubject() %></td>
		</tr>
		<tr>
			<td class="color">첨부파일</td>
			<td colspan="3">
			<%
			if(bean.getFilename() != null && !bean.getFilename().equals("")) {
			%>
				<a href="javascript:download('<%=bean.getFilename()%>')"><%=bean.getFilename() %></a>&emsp;
				(<%=bean.getFilesize() %> KByte)
			<%				
			} else {
				out.print("등록된 파일이 없습니다");
			}
			%>
			</td>
		</tr>
		<tr>
			<td colspan="4" height="100px"><pre><%=bean.getContent() %></pre></td>
		</tr>
		<tr>
			<td colspan="4" align="right"><%=bean.getIp() %>로 부터 글을 남기셨습니다 / 조회수 <%=bean.getCount() %></td>
		</tr>
		<tr>
			<td colspan="4" align="center"><hr/>
				[ <a href="javascript:list()">리스트</a> | 
				<a href="update.jsp?nowPage=<%=nowPage%>&num=<%=num%>">수 정</a> | 
				<a href="reply.jsp?nowPage=<%=nowPage%>">답 변</a> | 
				<a href="delete.jsp?nowPage=<%=nowPage%>&num=<%=num%>">삭 제</a> ]
			</td>
		</tr>
	</table>
	<form name="downFrm" method="post" action="download.jsp">
		<input type="hidden" name="filename">
	</form>
	<form name="listFrm" method="post" action="list.jsp">
		<input type="hidden" name="nowPage" value="<%=nowPage %>">
		
		<% if(!(keyWord == null || keyWord.equals(""))) {  %>
			<input type="hidden" name="keyField" value="<%=keyField %>">
			<input type="hidden" name="keyWord" value="<%=keyWord %>">
		<% } %>
		
	</form>
</body>
</html>