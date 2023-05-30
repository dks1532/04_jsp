<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSTL Core Library</h1>
	
	<h3>1. 변수(속성==attribute)</h3>
	<pre>
	* 변수 선언과 동시에 초기화(c:set var="" value="" [scope=""])
	- 변수 선언하고 초기값을 대입해두는 기능을 제공
	- 해당 변수들 어떤scope에 담아둘껀지 지정가능한 (생략시 page Scope에 담김)
		=> 해당 scope에 setAttribute를 통해 key-value형ㅌ로 데이터를 담아놓는 것이라고 생각하면 됨
		=> c:set으로 선언된 변수는 EL로 접근해서 사용가능함(스크립팅 원소로는 접근 불가)
		
		- 변수 타입을 별도로 지정안함
		- 초기값을 반드시 지정해야됨
	</pre>
	
	<c:set var="num1" value="10" />
	<c:set var="num2" value="20" scope="request" />
	
	num1 변수값 : ${num1} <br>
	num2 변수값 : ${num2} <br>
	
	<%-- num1 변수값 : <%=num1 %><br>  스크립팅원소로는 접근 불가 --%>
	<%-- <c:set var="result" value="num1+num2" /> num1+num2는 문자열로 인식이 됨 --%>	
	
	<c:set var="result" value="${num1+num2}" scope="session"/>
	
	10 + 20 = ${result}<p/>
	
	pageScope.num1 : ${pageScope.num1}<br>
	requestScope.num2 : ${requestScope.num2}<br>
	sessionScope.result : ${sessionScope.result}<br>
	requestScope.result : ${requestScope.result}<p/>
	
	<!-- value속성대신 시작태그와 종료태그 사이에 초기값 지정 가능 -->
	<c:set var="result" scope="request">9999</c:set>
	
	requestScope.result : ${requestScope.result}<p/>
	
	<hr>
	<pre>
	* 변수 삭제(c:remove var="제거하고자하는 변수명" [scope=""])
	- 해당 scope에서 변수를 찾아 제거하는 태그
	- scope 생략하면 모든 scope에서 해당 변수 모두 다 찾아서 제거함
	  => 해당 scope에 .removeAttribute를 통해 제거하는거라고 생각하면 됨
	</pre>
	
	삭제전 result : ${result}<p/>

	1) 특정 scope지정해서 삭제<br>
	<c:remove var="result" scope="request"/>
	request에서 삭제후 result : ${result}<p/>


	2) 모든 scope에서 삭제<p/>
	<c:remove var="result"/>	<!-- 뒤에 scope 지정안해주면 모든 scope에서 삭제 -->
	모두 삭제후 result : ${result}<p/>
	
	<hr>
	
	<pre>
	* 변수(데이터) 출력 (c:out value="출력하고자하는값" [default="기본값"] [escapeXml="true|false"])<br>
	  데이터를 출력하고자 할 때 사용하는 태그
	<!-- excapeXml이 false이면 태그의 형태로 취급하겠다는 것, true이면 문자열(String)으로 취급(true가 기본값) -->
	</pre>
	
	<c:out value="${num1}" /><br>	<!-- 원래 변수때문에 끊었다가고 그런것을 안해도 됨 -->
	<c:out value="${result}" default="없음"/><p/>
	
	<c:set var="outTest" value="<b>출력테스트</b>" />	<%-- set은 변수 넣는 것 --%>
	
	<!-- escapeXml 생략시 기본값이 true == 태그로 해석 안함(문자열로 취급) -->
	<c:out value="${outTest}"/><br>	
	<c:out value="${outTest}" escapeXml="false"/><p/>	<!-- false일때 <b>태그를 인식해 굵은 글씨 표시됨 -->
</body>
</html>