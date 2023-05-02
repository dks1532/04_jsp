<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="oracle06.*, java.util.*" %>
<jsp:useBean id="beanDBCon" class="oracle06.UsingBeanDBCon7"/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Bean과 DBConnectionPool을 이용한 DB검색</h1>
	<table border="1">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>주민번호</th>
			<th>전화번호</th>
			<th>이메일</th>
		</tr>
<%
	ArrayList<UsingBean7> alist = beanDBCon.getRegisterList();
	int count = alist.size();
	for(int i=0; i<alist.size(); i++) {
		UsingBean7 bean = alist.get(i);
%>
		<tr>
			<td><%=bean.getEmp_id() %></td>
			<td><%=bean.getEmp_name() %></td>
			<td><%=bean.getEmp_no() %></td>
			<td><%=bean.getPhone() %></td>
			<td><%=bean.getEmail() %></td>
		</tr>
<%
	}
%>
	</table>
	total records : <%=count %>
</body>
</html>










