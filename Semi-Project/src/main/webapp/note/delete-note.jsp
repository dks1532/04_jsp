<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
  // 삭제할 필기노트의 인덱스를 받아옴
  int noteIndex = Integer.parseInt(request.getParameter("noteIndex"));

  // 저장된 필기노트 리스트를 가져옴
  List<String> noteList = (List<String>) application.getAttribute("noteList");

  // 인덱스에 해당하는 필기노트를 리스트에서 삭제
  if (noteList != null && noteIndex >= 0 && noteIndex < noteList.size()) {
    noteList.remove(noteIndex);
  }

  // 업데이트된 필기노트 리스트를 애플리케이션 속성에 저장
  application.setAttribute("noteList", noteList);

  // 메인 페이지로 리다이렉트
  response.sendRedirect("index.jsp");
%>