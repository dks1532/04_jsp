<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.model.vo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>1. 기존 방식대로 스크립트릿과 표현식을 이용하여 각 scope에 담겨있는 값을 뽑아 화면에 출력</h3>
<%-- 	
	<%
		// requestScope 받아오기
		String classRoom = (String)request.getAttribute("classRoom");	// request가 Object타입이라 String으로 강제 형변환
		Person student = (Person)request.getAttribute("student");	// import가 자동으로 되지 않기때문에 page import 따로 해줘야함 + 형변환
		
		// sessionScope 받아오기
		String academy = (String)session.getAttribute("academy");	// session도 Object타입
		Person teacher = (Person)session.getAttribute("teacher");
	%>
	학원명 : <%=academy %><p/>
	강의장 : <%=classRoom %><p/>
	강사 : <%=teacher.getName() %>, <%=teacher.getAge() %>, <%=teacher.getGender() %><p/>
	<%=teacher %><p/>	<!-- toString을 만들었기 때문에 teacher만 해도 강사명, 나이, 성병이 나옴 -->
	
	수강생정보
	<ul>
		<li>이름 : <%=student.getName() %></li>	<!-- student만 출력하면 이름 나이 성별 다나옴 -->
		<li>나이 : <%=student.getAge() %></li>	<!-- student.age 하면 age로 접근하는건데 age가 private이라 바로 접근할수가 없어서 getAge()메서드로 값만 가져옴 -->
		<li>성별 : <%=student.getGender() %></li>
	</ul>
 --%>	<!-- html, 스크립트릿 등이 섞여 있을 떄는 주석처리를 jsp방식으로 해야함 -->
 
 	<h3>2. EL을 이용하여 쉽게 해당 SCOPE에 저장된 값 출력</h3>
 	<p>
 	 	EL을 이용하여 getXXX를 통해 값을 빼올 필요없이 EL구문내에 키값만 제시하면 바로 접근가능<br>
 	 	기본적으로 EL은 JSP내장객체를 구분하지 않고 자동으로 모든 내장객체에 키값을 검색해서 존재하면 값을 가져옴
 	</p>
 	학원명 : ${ academy } <p/>	<!-- 가장 범위가 작은 것부터 올라가면서 academy값이 있으면 값을 가져옴 -->
 	강의장 : ${ classRoom }<p/>	<!-- pageScope부터 찾고 그다음 requestScope에서 classRoom 변수 발견해서 가져옴 -->
 	강사 : ${ teacher.name }, ${teacher.age}, ${teacher.gender }<p/>
 	
 	수강생정보
	<ul>
		<li>이름 : ${student.name}</li>
		<li>나이 : ${student.age}</li>
		<li>성별 : ${student.gender}</li>
	</ul>
	
	<h3>3. EL사용시 내장 객체들의 저장딘 키값이 동일한 경우</h3>
	scope값 : ${ scope }<p/>	<!-- 처음에 request보고 없으면 session보고 그다음 application -->
	<!--
		EL은 공유범위가 제일 작은 scope에서부터 해당 키값을 검색함
		page -> request -> session -> application 
		만일, 모든 영역에서 못찾을 경우 => 아무것도 출력아됨(오류안남)
	 -->
	test값 : ${ test }<p/>	<!-- 없는 키값을 넣었을때는 아무것도 안들어옴(null값도 안들어옴) -->
	
	<h3>4. 직접 scope를 지정하여 접근하기</h3>
	<% pageContext.setAttribute("scope", "page"); %>
	
	pageScope에 담긴 값 : ${ scope } 또는 ${ pageScope.scope } <p/>
	requestScope에 담긴값 : ${ requestScope.scope }<p/>
	sessionScope에 담긴값 : ${ sessionScope.scope }<p/>
	applicationScope에 담긴값 : ${ applicationScope.scope }<p/><p/>
	
	잘못된 접근 : ${ sessionscope.classRoom }	<!-- 값이 없으므로 아무것도 안들어옴 -->
</body>
</html>