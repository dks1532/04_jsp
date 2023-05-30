<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>학원 조회 페이지</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

<style>

* {margin:10px auto;}

body {width:400px; text-align:center;}

ul {text-align: left; margin-left: 20px;}

</style>

</head>

<body>

<h2>학원 정보 조회하기</h2>

<hr>

학원명 : <input id="khName">

<button onclick="selectKh();">조회하기</button>

<ul id="result"></ul>

</body>
	<script>
		function selectKh() {
			$.ajax({
				url:"searchKH",
				success:function(data) {
					console.log(data);
					
					let result  ="";
						result	+= "	<li>" + bean.khname + "</li>"
								+  "	<li>" + bean.addr + "</li>"
								+  "	<li>" + bean.fax + "</li>";
					}
					$("#result").html(result);
				},
				error:function() {
					console.log("bean ajax 통신 실패");
				}
			});
		}
	</script>
</html>