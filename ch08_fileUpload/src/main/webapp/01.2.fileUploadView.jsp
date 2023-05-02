<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.*, java.io.*" %>
<%
	/*
		new MultipartRequest(request 객체,
							 저장할 폴더 경로,
							 파일의 최대크기,
							 인코딩타입,
							 기존의 파일명과 겹칠경우 덮어쓰기 방지 설정)
	*/
	String saveFolder = "D:/ayh/04_jsp/ch08_fileUpload/src/main/webapp/filestorage";
	// "D:\\ayh\\04_jsp\\ch08_fileUpload\\src\\main\\webapp\\filestorage"
	String encType = "UTF-8";
	int maxSize = 1024*1024*5;
	try {
		MultipartRequest multi = new MultipartRequest(request,saveFolder,maxSize,encType,
								new DefaultFileRenamePolicy());
		
		// 폼요소중에서 <input type="file">을 제외한 파라미터들의 이름
		Enumeration params = multi.getParameterNames();
		while(params.hasMoreElements()) {
			String name = (String)params.nextElement();
			String value = multi.getParameter(name);
			out.print(name + " : " + value + "<p/>");
		}
		out.print("<hr>");
		
		//폼요소중에서 <input type="file">인 요소의 파라미터들의 이름
		Enumeration files = multi.getFileNames();
		while(files.hasMoreElements()) {
			String name = (String)files.nextElement();
			String filename = multi.getFilesystemName(name);
			String originame = multi.getOriginalFileName(name);
			String type = multi.getContentType(name);
			File f = multi.getFile(name);
			out.print("파라미터의 이름: " + name + "<p/>");
			out.print("저장된 파일의 이름: " + filename + "<p/>");
			out.print("실제 파일의 이름: " + originame + "<p/>");
			out.print("파일 타입 : " + type + "<p/>");
			
			if(f != null) {
				out.print("파일의 크기 : " + f.length() + "Byte");
			}
			
		}
	} catch(Exception e) {
		System.out.println(e);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>