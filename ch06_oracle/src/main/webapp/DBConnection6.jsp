<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, oracle06.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>DBConntionPool을 이용한 DB 검색</h1>
	<table border="1">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>주민번호</th>
			<th>전화번호</th>
			<th>이메일</th>
		</tr>
<%
	DBConnectionMgr pool = DBConnectionMgr.getInstance();
	Connection con = null;
	try {
		con = pool.getConnection();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("SELECT * FROM EMP_INFO");
		
		while(rs.next()) {
%>
		<tr>
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
		</tr>
<%
		}
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		try {
			pool.freeConnection(con);
		} catch(Exception e) { }
	}
%>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	</table>
</body>
</html>