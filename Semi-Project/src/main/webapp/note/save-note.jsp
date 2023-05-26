<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
  // 필기노트를 저장할 리스트
  List<String> noteList = (List<String>) application.getAttribute("noteList");
  if (noteList == null) {
    noteList = new ArrayList<>();
  }

  // 폼으로부터 필기노트 내용을 받아옴
  String noteContent = request.getParameter("noteContent");
  if (noteContent != null && !noteContent.isEmpty()) {
    // 필기노트를 리스트에 추가
    noteList.add(noteContent);
  }

  // 업데이트된 필기노트 리스트를 애플리케이션 속성에 저장
  application.setAttribute("noteList", noteList);

  // 메인 페이지로 리다이렉트
  response.sendRedirect("index.jsp");
%>