<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>

<%
	request.setCharacterEncoding("utf-8");
  // 저장된 필기노트 리스트를 가져옴
  List<String> noteList = (List<String>) application.getAttribute("noteList");
%>

<ul>
  <%-- 저장된 필기노트가 있는 경우에만 출력 --%>
  <% if (noteList != null && !noteList.isEmpty()) { %>
    <%-- 필기노트 목록을 순회하며 출력 --%>
    <% for (int i = 0; i < noteList.size(); i++) { %>
      <li>
        <span class="note-content"><%= noteList.get(i) %></span>
        <div class="note-actions">
          <form action="delete-note.jsp" method="POST" style="display: inline;">
            <input type="hidden" name="noteIndex" value="<%= i %>">
            <button type="submit" class="delete-button">삭제</button>
          </form>
        </div>
      </li>
    <% } %>
  <% } else { %>
    <li>저장된 필기노트가 없습니다.</li>
  <% } %>
</ul>