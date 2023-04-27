<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	String bloodType = request.getParameter("bloodType");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3><%=name %>님의 혈액형은 <%=bloodType %>형의 성격</h3>
	<p>
		1. 감정을 숨기지를 못한다.
		
		
		
		2. 개성이 강하고 자기중심적.
		
		
		
		3. 성격이 긍정적 이고 낙천적이다.
		
		
		
		4. 좋으면 좋고 싫으면 싫다.
		
		
		
		5. 자존심이 무지하게 쎄다.
		
		
		
		6. 유머와 장난끼가 많아 인기가 있다.
		
		
		
		7. 두뇌가 명석하다.
		
		
		
		8. 호기심이 많은 편이다.
		
		
		
		9. 모든지 말보다 행동으로 옮긴다.
		
		
		
		10. 자기가 관심 있는 분야 에서는 최고로 잘안다.
	</p>
</body>
</html>