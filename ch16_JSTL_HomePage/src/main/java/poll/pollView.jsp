<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="poll.*, java.util.*" %>
<jsp:useBean id="pMgr" class="poll.PollMgr"/>
<%
	request.setCharacterEncoding("UTF-8");
	int num = 0;
	if(request.getParameter("num") != null) {
		num = Integer.parseInt(request.getParameter("num"));
	}
	int sum = pMgr.sumCount(num);
	ArrayList<PollItemBean> alist = pMgr.getView(num);
	PollListBean plBean = pMgr.getList(num);


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body align="center">
	<table border="1" align="center">
		<tr>
			<th colspan="4">Q : <%=plBean.getQuestion() %></th>
		</tr>
		<tr>
			<th colspan="3">총 투표자 : <%=sum %>명</th>
			<td>count</td>
		</tr>
	<%
		Random r = new Random();
		for(int i=0; i<alist.size(); i++) {
			PollItemBean piBean = alist.get(i);
			String[] item = piBean.getItem();	// 아이템
			int rgb = r.nextInt(255 * 255 * 255);	// 랜덤으로 색상 만들기
			String rgbHex = Integer.toHexString(rgb);	// 위의 랜덤 색상을 16진수로 고치기
			String hRGB = "#" + rgbHex;					// 앞에 '#' 넣기
			int count = piBean.getCount();	// 득표수
			int ratio = (int)(Math.ceil((double)count / sum * 100));
	%>
		<tr>
			<td><%=i+1 %></td>
			<td><%=item[0] %></td>
			<td>
				<table width="<%=ratio %>" height="10">
					<tr>
						<td bgcolor="<%=hRGB %>"></td>
					</tr>
				</table>
			</td>
			<td><%=count %></td>
		</tr>
	<%
		}
	%>
	</table>
	<p/>
	<a href="javascript:window.close();">닫기</a>
</body>
</html>