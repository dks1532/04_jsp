<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--	<%! 선언문 %>  --%>
	<jsp:declaration>
		public int max(int x, int y) {
			return x > y ? x : y;
		}
	</jsp:declaration>
	
	<%--	<% 스크립트릿 %>  --%>
	<jsp:scriptlet>
		int num1 = 10;
		int num2 = 20;
	</jsp:scriptlet>
	
	<%--	<%= 표현식 %> --%>
	첫번째 값 <jsp:expression>num1</jsp:expression>과
	두번째 값 <jsp:expression>num2</jsp:expression>중 큰수는?<br>
	<jsp:expression>max(num1, num2)</jsp:expression>
</body>
</html>