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
		1. 칭찬에 약하다.
		
		
		
		2. 대인관계가 원만하다.
		
		
		
		3. 모든일에 적극적이고 리더쉽이 있다.
		
		
		
		4. 자기자랑을 잘한다.
		
		
		
		5. 부탁하는것에 약하다.
		
		
		
		6. 사랑에 잘 빠진다.
		
		
		
		7. 남의 흉을 잘보는 타입이다.
		
		
		
		8. 소유욕이 강한 편이다.
		
		
		
		9. 굉장히 솔직한 타입이다.
		
		
		
		10. 누구에게 지는걸 싫어한다.
	</p>
</body>
</html>