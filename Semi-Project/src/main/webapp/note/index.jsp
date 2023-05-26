<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
  <title>메모장</title>
  <link rel="stylesheet" type="text/css" href="../resource/css/style_note.css">
  <style>
	  #gohome {
	  padding: 10px 20px;
	  background-color: #007bff;
	  color: #fff;
	  border: none;
	  cursor: pointer;
	}
  </style>
</head>
<body>
  <div class="container">
    <h1>메모장</h1>
    <form action="save-note.jsp" method="POST" style="text-align: right;">
      <textarea name="noteContent" placeholder="필기 내용을 입력하세요"></textarea>
      <button type="submit">저장</button>&emsp;
      <input type="button" value="홈으로" onclick="location.href='../index.jsp'" id="gohome">
    </form>
    <hr>
    <h2>임시저장된 메모장(※주의: 서버 종료시 데이터 사라짐)</h2>
    <%-- 저장된 필기노트 목록을 표시할 부분 --%>
    <%@ include file="note-list.jsp" %>
  </div>
</body>
</html>