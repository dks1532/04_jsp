<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = (String)session.getAttribute("idKey");
%>
<!DOCTYPE html>
<html>
<head>
  <title>인덱스 페이지</title>
  <link rel="stylesheet" type="text/css" href="resource/css/style_index.css">
  <script src="script.js"></script>
  
</head>
<body>
  <header>
    <h1>공공데이터 융합 웹 애플리케이션 개발자</h1>
  </header>
  
  <nav>
    <ul>
		<li><a href="note/index.jsp">메모장</a></li>
		<li><a href="boardNotes/list.jsp">게시판형필기노트</a></li>
		<li><a href="board/list.jsp">게시판</a></li>
		<li><a href="https://zoom.us/j/9970154402?_x_zm_rtaid=MOcdoxMuQ0yqKYw45PPzTg.1675838098375.a83e0796d3cf356e303b0de7dc32f72b&_x_zm_rhtaid=134#success">Zoom 사이트</a></li>
		<li><a href="https://www.kua.go.kr/uaptm010/selectMain.do">국민취업지원제도</a></li>
	<% if(id==null) { %>
		<li><a href="member/login.jsp">로그인</a></li>
	<% } else { %>
		<li><a href="member/logout.jsp">로그아웃</a></li>
	<% } %>
    </ul>
  </nav>
  
  <main>
    <section>
      <h2>공지사항</h2>
      <p>여기에 공지사항 작성</p>
    </section>
    
    <section>
      <h2>캘린더 일정</h2>
      <p><iframe src="https://calendar.google.com/calendar/embed?height=600&wkst=1&bgcolor=%23ffffff&ctz=Asia%2FSeoul&src=ZGtzMTUzMkBnbWFpbC5jb20&src=YWRkcmVzc2Jvb2sjY29udGFjdHNAZ3JvdXAudi5jYWxlbmRhci5nb29nbGUuY29t&src=Y2xhc3Nyb29tMTAyMDU0MTUzNjEyMzYwNTU1NzM2QGdyb3VwLmNhbGVuZGFyLmdvb2dsZS5jb20&src=a28uc291dGhfa29yZWEjaG9saWRheUBncm91cC52LmNhbGVuZGFyLmdvb2dsZS5jb20&color=%237986CB&color=%2333B679&color=%23c26401&color=%230B8043" style="border:solid 1px #777" width="800" height="600" frameborder="0" scrolling="no"></iframe></p>
    </section>
  </main>
  
  <footer>
    <p>© 2023 KH Information Educational Institute Semi-Project</p>
  </footer>
</body>
</html>