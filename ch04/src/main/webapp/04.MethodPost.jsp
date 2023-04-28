<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Post Method Servlet방식</h1>
	<form method="post" action="PostServlet">
		id : <input name="id"><p/>
		pw : <input type="password" name="pwd"><p/>
		email : <input name="email"><p/>
		<input type="submit" value="회원가입">
	</form>
</body>
</html>