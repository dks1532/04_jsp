<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.kh.model.vo.Person" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSTL Core Library</h1>
	
	<h3>1. 변수(속성==attribute)</h3>
	<pre>
	* 변수 선언과 동시에 초기화(c:set var="" value="" [scope=""])
	- 변수 선언하고 초기값을 대입해두는 기능을 제공
	- 해당 변수들 어떤scope에 담아둘껀지 지정가능한 (생략시 page Scope에 담김)
		=> 해당 scope에 setAttribute를 통해 key-value형ㅌ로 데이터를 담아놓는 것이라고 생각하면 됨
		=> c:set으로 선언된 변수는 EL로 접근해서 사용가능함(스크립팅 원소로는 접근 불가)
		
		- 변수 타입을 별도로 지정안함
		- 초기값을 반드시 지정해야됨
	</pre>
	
	<c:set var="num1" value="10" />	<!-- var는 자료형을 가리지 않으므로 변수명이라 생각하면 됨 (배열, boolean 등등) -->
	<c:set var="num2" value="20" scope="request" />
	
	num1 변수값 : ${num1} <br>
	num2 변수값 : ${num2} <br>
	
	<%-- num1 변수값 : <%=num1 %><br>  스크립팅원소로는 접근 불가 --%>
	<%-- <c:set var="result" value="num1+num2" /> num1+num2는 문자열로 인식이 됨 --%>	
	
	<c:set var="result" value="${num1+num2}" scope="session"/>
	
	10 + 20 = ${result}<p/>
	
	pageScope.num1 : ${pageScope.num1}<br>
	requestScope.num2 : ${requestScope.num2}<br>
	sessionScope.result : ${sessionScope.result}<br>
	requestScope.result : ${requestScope.result}<p/>
	
	<!-- value속성대신 시작태그와 종료태그 사이에 초기값 지정 가능 -->
	<c:set var="result" scope="request">9999</c:set>
	
	requestScope.result : ${requestScope.result}<p/>
	
	<hr>
	<pre>
	* 변수 삭제(c:remove var="제거하고자하는 변수명" [scope=""])
	- 해당 scope에서 변수를 찾아 제거하는 태그
	- scope 생략하면 모든 scope에서 해당 변수 모두 다 찾아서 제거함
	  => 해당 scope에 .removeAttribute를 통해 제거하는거라고 생각하면 됨
	</pre>
	
	삭제전 result : ${result}<p/>

	1) 특정 scope지정해서 삭제<br>
	<c:remove var="result" scope="request"/>
	request에서 삭제후 result : ${result}<p/>


	2) 모든 scope에서 삭제<p/>
	<c:remove var="result"/>	<!-- 뒤에 scope 지정안해주면 모든 scope에서 삭제 -->
	모두 삭제후 result : ${result}<p/>
	
	<hr>
	
	<pre>
	* 변수(데이터) 출력 (c:out value="출력하고자하는값" [default="기본값"] [escapeXml="true|false"])<br>
	  데이터를 출력하고자 할 때 사용하는 태그
	<!-- excapeXml이 false이면 태그의 형태로 취급하겠다는 것, true이면 문자열(String)으로 취급(true가 기본값) -->
	</pre>
	
	<c:out value="${num1}" /><br>	<!-- 원래 변수때문에 끊었다가고 그런것을 안해도 됨 -->
	<c:out value="${result}" default="없음"/><p/>
	
	<c:set var="outTest" value="<b>출력테스트</b>" />	<%-- set은 변수 넣는 것 --%>
	
	<!-- escapeXml 생략시 기본값이 true == 태그로 해석 안함(문자열로 취급) -->
	<c:out value="${outTest}"/><br>	
	<c:out value="${outTest}" escapeXml="false"/><p/>	<!-- false일때 <b>태그를 인식해 굵은 글씨 표시됨 -->
	
	<h3>2. 조건문(c:if test="조건식")</h3>
	<pre>
	- java의 if문과 같은 역할
	- 조건식은 test속성에 작성
	</pre>
	<%-- 
	<%
		if(num1 > num2) {
	%>
			<p>num1의 숫자가 크다</p>
	<%		
		}
	%>	<!-- 원래 이렇게 했던 것을 바꾸면 -->
	 --%>
	<c:if test="${num1 gt num2}">
		<b>num1이 num2보다 크다</b>
	</c:if>
	
	<c:if test="${num1 le num2}">
		<b>num1이 num2보다 작거나 같다</b>
	</c:if>
	
	<p/>
	
	<c:set var="str" value="안녕하세요" />
	
	<c:if test="${str eq '안녕하세요'}">	<%-- eq 다음에 String부분에 홀따옴표, 쌍따옴표 둘다가능 --%>
		<h4>Hello World</h4>
	</c:if>
	
	<c:if test='${str ne "안녕하세요"}'>	<!-- 바깥쪽이 홀따옴표면 안쪽을 쌍따옴표로, 둘다 같으면 에러뜸 -->
		<h4>Bye World</h4>
	</c:if>
	
	<p/>
	
	<h3>3. Choose(c:choose, c:when, c:otherwise)</h3>
	<pre>
	- java의 if-else, if-else 태그
	- 각 조건들은 c:choose의 하위요소로 c:when을 통해 작성(else문 역할 == c:otherwise)
	</pre>
	<%-- 
	<% if(조건) { %>
	<% } else if(조건) { %>		
	<% } else { %>
	<% } %>
	 --%>	<!-- 원래 하던 방식 -->
	 
	<c:choose>
		<c:when test="${num1 gt 20}">
			<b>처음 뵙겠습니다</b>
		</c:when>
		<c:when test="${num1 ge 10}">
			<b>다시 만나 반갑습니다</b>
		</c:when>
		<c:otherwise>
			<b>안녕하세요</b>
		</c:otherwise>
	</c:choose>
	
	<pre>
	문제 : 점수를 넣는 변수 선언하고 값을 넣어주고<br>
		when-otherwise로 80점 이상이면 '합격' 79~70 '예비합격' 나머지는 '불합격'
	</pre>
	<c:set var="score" value="98"/>
	<c:choose>
		<c:when test="${score ge 80}">
			<p>합격</p>
		</c:when>
		<c:when test="${score ge 70}">
			<p>예비합격</p>
		</c:when>
		<c:otherwise>
			<p>불합격</p>
		</c:otherwise>
	</c:choose>
	
	<h3>4. 반복문 forEach</h3>
	<pre>
	for loop문 - (c:forEach var="변수명" begin="초기값" end="끝값" [step="반복시 증가값"])
	향상된 for문 - (c:forEach var="변수명" items="순차적으로접근하고자하는객체(배열|컬렉션)" [varStatus="현재접근한요소의상태값을보관할 변수명"])
	var 속성으로 선언된 변수에 접근하고자 할 때는 반드시 EL구문으로 접근
	</pre>
	
	<%-- <% for(int i=1; i<=10; i+=2) { out.print("반복확인 : " + i + "<br>") } %> --%>
	
	<c:forEach var="i" begin="1" end="10" step="2">
		반복확인 : ${i}<br>
	</c:forEach>
	
	<p/>
	
	<c:forEach var="i" begin="1" end="6">
		<h${i}>태그안에도 적용가능</h${i}>	<!-- <h1>부터 <h6>까지 나옴 -->
	</c:forEach>
	
	<c:set var="colors">
		red,yellow,green,pink
	</c:set>
	
	colors변수값 : ${colors}<br>
	
	<ul>
		<c:forEach var="c" items="${colors}">
			<li style="color:${c}">${c}</li>
		</c:forEach>
	</ul>
	
	<%
		ArrayList<Person> list = new ArrayList<Person>();
		list.add(new Person("홍길동",20,"남자"));
		list.add(new Person("아무개",23,"여자"));
		list.add(new Person("김말똥",19,"남자"));
		/* int num = 1; */
	%>	<!-- ArrayList 만들거나 변수 선언하는 것(int num1 = 1 이면 끝)은 이게 더 편함, 따라서 섞어서 쓰면 좋음 -->
	
	<c:set var="pList" value="<%=list %>" scope="request"/>
	
	<table border="1">
		<thead>
			<tr>
				<th>index</th>
				<th>이름</th>
				<th>나이</th>
				<th>성별</th>
			</tr>
		</thead>
		<tbody>
		<%-- 
			<% if(pList.isEmpty) { %>
			
			<% } else { %>
			<% for(Person p : pList) { %>
			
			<% } }%>
			 --%>	<!-- 예전방식 -->
			 
		<%-- 1. 컬렉션 for 출력 (일반 for문) 	 
		<c:choose>
			<c:when test="${empty pList}">	<!-- if문 -->
				<tr>
					<td colspan="3">조회된 사람이 없습니다</td>
				</tr>
			</c:when>
			<c:otherwise>	<!-- else문 -->
				<c:forEach var="p" items="${pList}">
					<tr>
						<td>${p.name}</td>
						<td>${p.age}</td>
						<td>${p.gender}</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
		 --%>
		
		<!-- 2. status속성 추가 출력 -->
		<c:choose>
			<c:when test="${empty pList}">	<!-- if문 -->
				<tr>
					<td colspan="3">조회된 사람이 없습니다</td>
				</tr>
			</c:when>
			<c:otherwise>	<!-- else문 -->
				<c:forEach var="p" items="${pList}" varStatus="s">
					<tr>
						<%-- <td>${s.index}</td> --%>	<!-- index와 count는 varStatus안에 들어있음 -->
						<td>${s.count}</td> <!-- index는 0부터 시작하고 count는 1부터 시작 -->
						<td>${p.name}</td>	
						<td>${p.age}</td>
						<td>${p.gender}</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
		</tbody>
	</table>
	
	<h3>5. 반복문 - forTokens</h3>
	<pre>
	(c:forTokens var="변수명" items="분리시키고자하는 문자열" delims="구분자")
	- 구분자로 분리된 각각의 문자열에 순차적으로 접근하면서 반복수행
	- java split("구분자") 또는 StringTokenizer와 비슷한 기능
	</pre>
	
	<c:set var="device" value="컴퓨터,핸드폰,TV,에어컨/냉장고.세탁기" />
	<ol>
		<c:forTokens var="d" items="${device}" delims=",/.">	<!-- 기본은 ,로 구분한다. /와.으로도 split가능 -->
			<li>${d}</li>
		</c:forTokens>
	</ol>
	
	<hr>
	
	<h3>6. url, 쿼리 스트링관련 - url, param</h3>
	<pre>
	- url경로로 생성하고, 쿼리스트링을 정의해 둘 수 있는 태그
	
	c:url var="변수명" value="요청할 url"
		c:param name="키값" value="전달할 값" /
		c:param name="키값" value="전달할 값" /
	/c:url
	</pre>
	
	<!-- 서블릿을 만들지 않았기 때문에 오류남 그냥 주소표시창에 잘 넘어가는지만 확인 -->
	<a href="list.jsp?cpage=1&num=10">기존방식</a>
	
	<%-- <a href="list.jsp?cpage="+<$=page %>+"&num=" +<%=num%>>기존방식</a> --%>
	
	<c:url var="t" value="list.do">
		<c:param name="cpage" value="1"/>
		<c:param name="num" value="10"/>
	</c:url>
	<a href="${t}">c:url 이용한 방식</a>
</body>
</html>