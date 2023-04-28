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
	Class.forName("oracle.jdbc.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","kh","1234");
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from employee_copy3");
%> 
	<table border="1">
		<tr>
			<th>사원ID</th>
			<th>사원명</th>
			<th>월급</th>
			<th>연봉</th>
		</tr>
<%
	if(rs!= null) {
		while(rs.next()) {
%>
		<tr>
			<td><%=rs.getString("emp_id") %></td>
			<td><%=rs.getString("emp_name") %></td>
			<td><%=rs.getInt("salary") %></td>
			<td><%=rs.getInt("연봉") %></td>
		</tr>
<%
		count++;
		}
	}
%>
	</table>
	total records : <%=count %>		
</body>
</html>