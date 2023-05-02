<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int count = 0;
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","kh","5678");
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from department");
%>
	<table border="1">
		<tr>
			<th>부서ID</th>
			<th>부서명</th>
			<th>부서위치</th>
		</tr>
<%
	if(rs != null) {
		while(rs.next()) {
%>
		<tr>
			<td><%=rs.getString("dept_id") %></td>
			<td><%=rs.getString("dept_title") %></td>
			<td><%=rs.getString("location_id") %></td>
		</tr>
<%
		count++;
		}
	}
%>
	</table>
	total records : <%=count %>
<%
	} catch(Exception e) {
		System.out.println("예외발생 : ");
	} 
%>
</body>
</html>