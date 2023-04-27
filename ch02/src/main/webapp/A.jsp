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
		1. 다정다감하고 배려를 할줄 안다.


		
		2. 상처를 잘 받고 소심한 면이 있다.
		
		
		
		3. 호불호가 확실하다.
		
		
		
		4. 혼자있고 소외감 느끼는걸 싫어함.
		
		
		
		5. 인내심이 많고 상대의 이야기를 잘 들어줌.
		
		
		
		6. 평소 걱정이 많고 생각이 깊다.
		
		
		
		7. 거절을 잘 못한다.
		
		
		
		8. 외로움을 잘 타고 혼자 있는거 싫어한다.
		
		
		
		9. 웃음도 많고 눈물도 많다.
		
		
		
		10. 참는 성격이지만 폭발하면 무섭다.
	</p>
</body>
</html>