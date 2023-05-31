<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>1. formatNumber</h3>
	<p>
	숫자데이터의 포맷(형식)지정<br>
	- 표현하고자 하는 숫자데이터의 형식을 통화기호, %등 원하는 쓰임에 맞게 형식 지정하는 태그<p/>
	(fmt:formatNumber value="출력할값" [groupingUsed="true|false" type="percent|currency"] currencySymbol="통화기호문자"])
	</p>
	
	<c:set var="num1" value="123456789"/>
	<c:set var="num2" value="0.75"/>
	<c:set var="num3" value="50000"/>
	
	num1 출력 : ${num1} <p/>
	세자리마다 구분하여 출력 : <fmt:formatNumber value="${num1}"/><p/><!-- groupingUsed 기본값(true) : 구분자 유 (3자리마다 콤마) -->
	숫자 그대로 출력 : <fmt:formatNumber value="${num1}" groupingUsed="false" /><p/><p/>
	<!-- groupingUsed : 세자리마다 구분자(,) 표시여부 -->
	
	percent : <fmt:formatNumber value="${num2}" type="percent" /><p/>
	currency : <fmt:formatNumber value="${num3}" type="currency" /><p/>	<!-- 원표시에 3자리마다 콤마 찍어줌 -->
	currency(,제거) : <fmt:formatNumber value="${num3}" type="currency" groupingUsed="false"/><p/><!-- 원표시는 있으나 콤마 안찍어줌 -->
	currency $ : <fmt:formatNumber value="${num3}" type="currency" currencySymbol="$"/><p/>	<!-- 달러표시 -->
	<!--
		type : 백분율(%), 통화기호 형식 지정
			- type = "percent" : %로 출력
			- type = "currency" : 현재 local지역의 화폐를 써줌
			- type = "currency" currencySymbol="$" : 화폐단위 기호 지정 
		currencySymbol : 통화기호문자 지정
	 -->
	 
	 <hr>
	 
	 <h3>2. formatDate</h3>
	 <p>날짜 및 시간의 포맷 지정(단, java.util.Date 객체사용)</p>
	 
	 <c:set var="today" value="<%=new java.util.Date() %>"/>
	 today 출력 : ${today} <p/>
	 
	 <ul>
	 	<li>현재 날짜 : <fmt:formatDate value="${today}"/></li><!-- type생략시 기본값이 date(연.월.일 가져옴) -->
	 	<li>현재 시간 : <fmt:formatDate value="${today}" type="time"/></li>
	 	<li>현재 날짜와 시간 : <fmt:formatDate value="${today}" type="both"/></li><!-- dateStyle, timeStyle 생략시 기본값 : medium -->
	 	<li>Medium : <fmt:formatDate value="${today}" type="both" dateStyle="medium" timeStyle="medium"/></li>
	 	<li>Long : <fmt:formatDate value="${today}" type="both" dateStyle="long" timeStyle="long"/></li>
	 	<li>Full : <fmt:formatDate value="${today}" type="both" dateStyle="full" timeStyle="full"/></li>
	 	<li>Short : <fmt:formatDate value="${today}" type="both" dateStyle="short" timeStyle="short"/></li>
	 	<li>내 패턴 : <fmt:formatDate value="${today}" type="both" pattern="yyyy-MM-dd(E) HH:mm:ss(a)"/></li>
	 		<!-- Month의 M과 minute에 m이 겹치기 때문에 달은 대문자, 분은 소문자 지켜야함 -->
	 		<!-- - HH: 24 hour format / 무조건 2자리 (필요할 경우, 앞에 0 붙여줌)
				- hh : 12 hour format / 무조건 2자리 (필요할 경우, 앞에 0 붙여줌)
				- H : 24 hour format / 1~2 자리
				- h: 12 hour format / 1~2 자리 -->
	 </ul>
</body>
</html>