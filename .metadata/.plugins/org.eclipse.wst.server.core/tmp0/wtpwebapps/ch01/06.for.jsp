<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>for Ex</h1>
	<!-- 1~10까지의 합 -->
	<%
		int sum = 0;
		for(int i=1; i<=10; i++) {
			sum += i;
		}
	%>
	1~10까지의 합 : <%=sum %></p>
	
	<%-- * 프로그램을 하면서 브라우저로 출력하려면 
		 1) out.print(출력할 구문);
		 2) 중간을 끊어서 html로 넣어줌
		 <%
		 	프로그램 하다가
		 %>
		 	html 구문 작성
		 <%
		 	프로그램 이어서 작성
		 %>
	 --%>
	<%
		int sum2 = 0;
		for(int i=1; i<=10; i++) {
			if(i < 10)
				out.print(i + " + ");
			else
				out.print(i + " = ");
			
			sum2 += i;
		}
	%>
	<%=sum2 %></p>
	
	
	<!-- 프로그램을 끊었다가 다시 프로그램을 할 경우 if나 for등에 1줄이어도 반드시 { }넣어야됨 -->
	<%
		int sum3 = 0;
		for(int i=1; i<=10; i++) {
			if(i < 10){
	%>
				<%=(i + " + ") %>
	<%
			} else {
	%>
				<%=(i + " = ") %>
	<%
			}
			sum3 += i;
		}
	%>
	<%=sum3 %></p>
	
	
	<%
		int[] arr = new int[10];
		int sum4 = 0;
		for(int i=0; i<arr.length; i++) {
			arr[i] = i+1;
	%>
			<%=(arr[i] + " ") %>
	<%
			sum4 += arr[i];
		}
	%>
	= <%=sum4 %></p>

</body>
</html>