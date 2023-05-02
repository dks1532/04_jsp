<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" enctype="multipart/form-data" action="01.2.fileUploadView.jsp">
		이름 : <input name="user"><p/>
		title : <input name="title"><p/>
		file : <input type="file" name="uploadefile"><p/>
		<input type="submit" value="UPLOAD">
	</form>
</body>
</html>