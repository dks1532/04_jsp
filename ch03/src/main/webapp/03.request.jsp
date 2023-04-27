<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String protocol = request.getProtocol();
		String serverName = request.getServerName();
		int serverPort = request.getServerPort();
		String remoteAddr = request.getRemoteAddr();
		String remoteHost = request.getRemoteHost();
	%>
	<h1>Request 내장 메소드</h1>
	프로토콜 : <%=protocol %><p/>
	서버의 이름 : <%=serverName %><p/>
	서버의 포트번호 : <%=serverPort %><p/>
	클라이언트 컴퓨터 주소 : <%=remoteAddr %><p/>
	클라이언트 컴퓨터 이름 : <%=remoteHost %><p/>
	요청 경로(URL) : <%=request.getRequestURL() %><p/>
	요청 경로(URI) : <%=request.getRequestURI() %><p/>
	<%="현재 사용하는 브라우저 : " + request.getHeader("User-Agent") + "<p/>" %>
	<%="현재 사용하는 파일 타입 : " + request.getHeader("Accept") + "<p/>" %>
</body>
</html>