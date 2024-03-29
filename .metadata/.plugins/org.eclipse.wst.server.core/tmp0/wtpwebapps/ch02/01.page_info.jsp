<%-- 
	* 지시자 : JSP 페이지가 실행될 때 필요한 정보를 JSP컨테이너에게 알리는 역할
	  - JSP : 동적 컨텐츠를 생성하는 웹 컴포넌트
	    - 웹 컴포넌트 : 웹페이지 혹은 웹앱에서 재사용화 / 커스텀화 / 캡슐화된 HTML태그를 만들 수 있는 웹 플랫폼 APIs의 집합
	    - 컨테이너 : 웹컴포넌트를 저장하는 저장소의 역할, 메모리 로딩, 객체 생성및 초기화 등 서블릿의 생명주기를 관리하고,
	    			JSP를 서블릿으로 변환하는 기능을 수행
	* 지시자의 종류
	  1) page 지시자 : jsp 페이지에 지원되는 속성의 정의
	  2) include 지시자 : 별도의 파일을 jsp파일에 삽입
	  3) taglib 지시자 : jsp에서 지원하지 않는 부분들을 사용자가 직접 작성하여 그 태그를 호출하여 사용	   
--%>
<%--
	1) page 지시자
		- info : 현재 페이지를 설명해주는 문자열
		- language : 사용할 언어
		- contentType : jsp페이지의 내용을 어떤 형태로 출력할 것인지 MIME형식으로 브라우저에 알려주는 역할
						MIME 형식 : text/jpg, text/sml, text/plain ...
		- pageEncoding : 페이지의 문자 인코딩값
		- info : 현재 페이지를 설명해주는 문자열
		- session(기본값 : "true") : HttpSession을 사용할지 여부
				true 이면 세션을 계속 유지하고
				false 이면 세션이 연결되지 않음
		- buffer(기본값 : 8kb) : 출력크기를 kb단위로 지정
		- autoFlush(기본값 : true) : 버퍼가 가득 찼을 때 저장된 내용들을 어떻게 처리할 것인지
			true : 가득차면 자동으로 비워지게 됨
			false : 가득차면 작업이 중지되고 예외발생
		- import: 다른 class API를 사용하고자 할때 import후 사용
		- extends : 다른 class를 상속받아 사용할 때
		- trimDirective Whitespaces : 글자의 맨 앞과 맨 뒤의 공백 제거
		- errorPage : 사용자 정의로 error페이지를 별도로 만들어 사용할 때
		- isErrorPage : errorPage를 사용할 경우 반드시 isErrorPage로 ErrorPage임을 표시
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info = "JSP 현재 페이지 정보" session = "false" buffer = "16kb"
	autoFlush = "true" import="java.util.*" %>
<%-- 

<%@ page session = "false"%>
<%@ page buffer = "16kb"%>
<%@ page autoFlush = "true"%>
<%@ page import = "java.util.*"%>

--%>	

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Page 지시자 info</h1>
	<%=this.getServletInfo() %>
	
	<h1>Page 지시자 import</h1>
	<%
		Date date = new Date();
	%>
	현재 시간과 날짜 ? <%=date.toLocaleString() %>
</body>
</html>