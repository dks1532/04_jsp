<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="test" class="ch05Bean.BeanTest1"/>   
<jsp:setProperty name="test" property="name" value="자바빈사용:홍길동"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
당신의 이름 : <jsp:getProperty property="name" name="test"/>
</body>
</html>