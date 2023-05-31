<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%
	request.setCharacterEncoding("utf-8");
	/* String id = (String)session.getAttribute("idKey"); */	/* 이게 없어도 c태그로 idKey를 세션에서 바로 불러올수 있음 */
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resource/css/style.css" rel="stylesheet">
</head>
<body>
	<header>
		<div class="logo"><img src="https://www.kh-academy.co.kr/resources/images/main/logo.svg"></div>
		<nav>
			<ul class="nav">
				<li><a href="poll/pollList.jsp">투표프로그램</a></li>
				<li><a href="board/list.jsp">게시판</a></li>
			
				<c:choose>
					<c:when test="${empty idKey}">	<!-- pageScope에서 찾고, request에도 없으므르 session에 도착해서 idKey를 발견함 -->
						<li><a href="member/login.jsp">로그인</a></li>
					</c:when>	
					<c:otherwise>
						<li><a href="member/logout.jsp">로그아웃</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</nav>
		<div id="login">
			<c:if test="${not empty idKey}">
				<p>[${idKey}님 로그인 상태]</p>
			</c:if>
		</div>
	</header>
	<article id="content">
		<img src="resource/img/slide1.jpg">
	</article>
</body>
</html>