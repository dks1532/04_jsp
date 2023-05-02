<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	int fileCnt = 0;
	if(request.getParameter("addcnt") != null) {
		fileCnt = Integer.parseInt(request.getParameter("addcnt"));
	}
	System.out.println(fileCnt);
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 
<script type="text/javascript">
	function addFile(formName) {
		if(formName.addcnt.value=="") {
			alert("입력할 파일의 갯수를 입력하고 확인버튼을 클릭하세요");
			formName.addcnt.focus();
			return;
		}
		formName.submit();
	}
</script> 
-->
</head>
<body>
	<div>
		<h4>여러 개의 파일을 업로드하기 위해 파일의 개수를 입력한 후,</h4>
		<h4>확인 버튼을 눌러주세요</h4>
		<h4>파일 입력이 안료되면 DONE버튼을 눌러주세요</h4>
	</div>
	<table border="1" align="center">
		<tr>
			<form name="fileCnt" method="post">
				<td>추가할 파일의 수 입력 : <input name="addcnt" required></td>
				<td><input type="submit" value="확인"></td>				
			</form>
		</tr>
		<tr>
			<form name="fileUp" method="post" enctype="multipart/form-data" action="02.2.multiView.jsp">
				<td>
				<% for(int i=0; i<fileCnt; i++) { %>
						<input type="file" name="selectFile<%=i %>"><br>						
				<% } %>
				</td>
				<td><input type="submit" value="DONE"></td>
			</form>
		</tr>
	</table>
</body>
</html>