<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	int one;
	int two = 1;
	
	// 메소드는 반드시 <%! ~~ 안에서만 선언 해야함
	public int plusMethod(int one, int two) {
		return one + two;
	}
	
	String msg;
	int three;
%>
one과 two의 합은 ? <%=plusMethod(3, 5) %><br>
String msg의 값은 ? <%=msg %><br>
three의 값은 ? <%=three %>
</body>
</html>