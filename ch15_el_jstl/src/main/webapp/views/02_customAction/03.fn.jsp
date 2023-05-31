<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>3. JSTL Function Library</h3>
	
	<c:set var="str" value="How are you?" />
	
	str : ${str}<p/>
	
	문자열의 길이 : ${str.length()}<p/>
	문자열의 길이 : ${fn:length(str)}<p/>
	
	모두 대문자로 출력 : ${ fn:toUpperCase(str) }<p/>
	모두 소문자로 출력 : ${ fn:toLowerCase(str) }<p/>
	
	are의 시작인덱스 번호 : ${fn:indexOf(str, 'are')}<p/> <!-- index 4번부터 are가 시작 -->
	are => were 변경 : ${fn:replace(str,"are","were")}<p/> <!-- 원본은 안바뀜 -->
	str : ${str}<p/>
	
	<c:if test="${fn:contains(str, 'are')}"> <!-- str에 are가 포함되어 있는가? (true,false) -->
		포함되어 있음
	</c:if>
	
</body>
</html>