<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int ref = 1;
// int ref = Integer.parseInt(requset.getParameter("num"));
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<title>Insert title here</title>
<style>
	body {text-align: center;}
	img {width:700px;}
	table {border:1px solid black; width:700px; border-collapse: collapse;}
	th, td {border:1px solid black;}
	#border5 {border-bottom:3px solid black;}
</style>
</head>
<body>
	<img src="resource/img/img1.png"><p/>
	<table align="center" id="reply">
		<thead>
			<tr id="border5">
				<th width="15%">댓글작성</th>
			<!-- 로그인한 사람만 댓글 달도록 하기 -->
			<%
				if(true) {
			%>
					<td width="70%"><textarea rows="3" cols="70" id="replyContent"></textarea></td>
					<td width="15%"><button onclick="insertReply();">댓글등록</button></td>
			<%		
				} else {
			%>
					<td width="70%">로그인 후 사용가능한 서비스입니다.</td>
					<td width="15%"><button disabled>댓글등록</button></td>
			<%		
				}
			%>
			</tr>
			<!-- <tr>
				<th width="15%">댓글작성</th>
				<td width="70%"><textarea rows="3" cols="50"></textarea></td>
				<td width="15%"><button onclick="insertReply();">댓글등록</button></td>
			</tr> -->
		</thead>
		<tbody>
		</tbody>
	</table>
	
	<script>
		$(function() {
			selectReplyList();
			setInterval(selectReplyList, 1000);	// (1초마다 업데이트), 리소스에 계속 쌓여 성능이 저하되기 때문에 실시간이 중요한 곳에서만 사용
		});
		
		function selectReplyList() {
			$.ajax({
				url:"rlist.bo",
				data:{refnum:<%=ref %>},
				success:function(list) {
					console.log(list);
					
					let result = "";
					for(let i=0; i<list.length; i++) {
						result += "<tr>"
								+ " 	<td>" + list[i].name + "</td>"
								+ " 	<td>" + list[i].content + "</td>"
								+ " 	<td>" + list[i].redate + "</td>"
								+ "</tr>";
					}
					$("#reply tbody").html(result);
				},
				error:function() {
					console.log("댓글목록조회 ajax 통신 실패");
				}
			});
		}
		
		function insertReply() {
			$.ajax({
				url:"rinsert.bo",
				data:{
					content:$("#replyContent").val(),
					refnum:<%=ref %>,
					name:"이길순"
				},
				type:"post",
				success:function(result) {
					if(result > 0) {
						selectReplyList();
						$("#replyContent").val("");
					}
				},
				error:function() {
					console.log("댓글등록 ajax 통신 실패");
				}
			});
		}
	</script>
</body>
</html>