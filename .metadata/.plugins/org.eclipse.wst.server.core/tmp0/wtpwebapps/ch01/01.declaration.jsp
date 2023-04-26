<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--
	* JSP
	- 웹 프로그래밍 언어
	- 동적인 페이지를 생성하기 위한 서버측 스크립트 언어
	- 자바 기반
	
	- 사용되는 영역
	1) 선언문(Declaration)
		- jsp에서 사용되는 변수나 메소드를 정의할 수 있는 영역
		- jsp페이지 내에서 변수나 메소드를 이용하여 동적으로 HTML코드를 생성하는데 사용
		- 멤버변수 : jsp페이지내에 어느곳에서든 선언하면 페이지내의 모든 영역에서 사용
	2) 스크립트릿(Scriptlet)
		- jsp페이지가 서블릿으로 변환되고 요청될 때 Service 메소드 안에 선언되는 요소
		  (메소드를 선언할 수 없음)
	3) 표현식(Expression)
		- 동적인 jsp페이지를 브라우저로 표현하기 위한 요소
		  (변수나 메소드의 결과값을 브라우저에 출력할 수 있음)
		- 세미콜론(;)을 표기하지 않음
		  (서블릿 코드로 변환될 때 자동으로 붙여짐)
-->
	<%-- 
		3) 표현식(Expression)
			[표현식]
			<%=변수 혹은 메소드%>	
	--%>
	
	나의 이름 <%= name %> 입니다<BR>
	과정명은 <%=class1 %> 입니다<BR>
	과정은 <%=num %>번째 과정입니다.
<%-- 
	1) 선언문(Declaration)
		[표현식]
		<%!
			멤버변수나 메소드 정의
		%>
--%>
<%!
	String name = "홍길동";
	String class1 = "공공데이터 융합 웹 애플리케이션 개발자 양성과정";
	int num = 2;
%>
</body>
</html>