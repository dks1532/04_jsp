<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = (String)session.getAttribute("idKey");
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
			<% if(id==null) { %>
				<li><a href="member/login.jsp">로그인</a></li>
			<% } else { %>
				<li><a href="member/logout.jsp">로그아웃</a></li>
			<% } %>
			</ul>
		</nav>
		<div id="login">
			<% if(id != null) { %>
			<p>[<%=id %>님 로그인 상태]</p>
			<% } %>
		</div>
	</header>
	<article id="content">
		<img src="resource/img/slide1.jpg">
	</article>
</body>
</html>