<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*, oracle06.*" %>
<jsp:useBean id="regMgr" class="oracle06.RegisterMgr5" />    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Bean을 이용한 ORACLE 연동</h1>
	<table border="1">
		<tr>
			<th>사번</th>
			<th>이름</th>
			<th>email</th>
			<th>전화번호</th>
			<th>부서코드</th>
			<th>급여</th>
		</tr>
<%
	ArrayList<RegisterBean5> alist = regMgr.getRegisterList();
	for(int i=0; i<alist.size(); i++) {
		RegisterBean5 regBean = alist.get(i);
		
%>
		<tr>
			<td><%=regBean.getEmp_id() %></td>
			<td><%=regBean.getEmp_name() %></td>
			<td><%=regBean.getEmail() %></td>
			<td><%=regBean.getPhone() %></td>
			<td><%=regBean.getDept_code() %></td>
			<td><%=regBean.getSalary() %></td>
		</tr>
<%		
	}
%>
	</table>
</body>
</html>