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
		1. 두뇌회전이 빠르다.
		
		
		
		2. 낯을 많이 가린다.
		
		
		
		3. 바보 아니면 천재 둘중 하나다.
		
		
		
		4. 자신의 속마음을 들키기 싫어한다.
		
		
		
		5. 논리적이며 계산적이다.
		
		
		
		6. 어디에 얽매이는거 싫다?
		
		
		
		7. 표현을 잘 못한다.
		
		
		
		8. 끈기는 조금 약한 편이다.
		
		
		
		9. 엉뚱한 생각을 많이한다.
		
		
		
		10. 자기관리를 잘하고 실수를 잘 안한다.
	</p>
</body>
</html>