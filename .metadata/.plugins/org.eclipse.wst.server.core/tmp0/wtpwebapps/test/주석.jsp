<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<!-- html 주석 -->
<%-- jsp 주석 (가리지 않고 사용가능)--%>

<!-- 나의 이름 <%= name %> 입니다<BR>	주석은 html만 주석이 됨 -->
<%-- 과정명은 <%= class1 --%>
과정명은 <%=class1 %> 입니다<BR>
과정은 <%=num %>번째 과정입니다.

<%!
	// 프로그램 주석
	/* 
		여러줄 주석
	*/
	String name = "홍길동";
	String class1 = "공공데이터 융합 웹 애플리케이션 개발자 양성과정";
	int num = 2;
%>
</body>
</html>