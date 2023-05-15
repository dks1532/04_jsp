<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>회원가입</title>
<style type="text/css">
	th {padding:8px;}
	td {padding:3px 0 3px 3px;}
</style>
<script src="resource/js/script.js" type="text/javascript" charset="utf-8"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function findAddr() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	            let roadAddr = data.roadAddress;
	            let jibunAddr = data.jibunAddress;
	            let extraAddr = '';
	            
	            document.getElementById("postcode").value = data.zonecode;
	            
	            if(data.userSelectedType == 'R') {
		            if(roadAddr != '') {
		            	if(data.bname != '') {
		            		extraAddr += data.bname;
		            	}
		            	if(data.buildingName != '') {
		            		extraAddr += extraAddr != '' ? ', ' + data.buildingName : data.buildingName;
		            	}
		            	roadAddr += extraAddr != '' ? '(' + extraAddr + ')' : '';
		            	document.getElementById("addr").value = roadAddr;
		            }
	            } else if(data.userSelectedType == 'J') {
	            	document.getElementById("addr").value = jibunAddr;
	            }
	            
	            document.getElementById("detailAddr").focus();
	        }
	    }).open();
	}
</script>
</head>
<body bgcolor="#E4F7BA" >
	<form name="regFrm" method ="post" action="memberProc.jsp">
		<table border="1" align="center" width="1100" style="border-collapse:collapse">
			<tr bgcolor="#425518">
				<th colspan="3" align="center"><font color="#ffffff">회원가입</font></th>
			</tr>
			<tr>
				<td>아이디</td>
				<td>
					<input name="id" onkeydown="inputIdChk();">							 	    			 
					<input type="button" value="ID중복확인" onclick="idCheck(this.form.id.value);">
					<input type="hidden" name="idbtncheck" value="idUncheck">
				</td>
				<td>영문과 숫자로만 입력하세요</td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td>
					<input type="password" name="pwd">
				</td>
				<td>특수기호,영문,숫자가 각 1개 이상씩 들어가야 되고 8글자 이상</td>
			</tr>
			<tr>
				<td>패스워드 확인</td>
				<td>
					<input type="password" name="repwd" >
				</td>
				<td>위의 비밀번호를 한번 더 넣으세요</td>
			</tr>
			<tr>
				<td>이름</td>
				<td>
					<input name="name">
				</td>
				<td>한글로 입력하세요</td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
					<input type="radio" name="gender" value="1" checked>남&emsp;&emsp;
					<input type="radio" name="gender" value="2" >여
				</td>
				<td>성별을 선택해 주세요</td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td>
					<input name="birthday" >
				</td>
				<td>6글자로 입력. ex) 190315</td>
			</tr>
			<tr>
				<td>E-mail</td>
				<td>
					<input name="email" size="40" >
				</td>
				<td>ex) email@naver.com</td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td>
					<input name="zipcode" id="postcode" readonly>
					<input type="button" value="우편번호 찾기" onclick="findAddr();">
				</td>
				<td>우편번호를 검색하세요</td>
			</tr>
			<tr>
				<td>주소</td>
				<td>
					<input name="address" id="addr" size="60" readonly><br/>
					<input name="detailAddress" id="detailAddr" >
				</td>
				<td>상세주소가 있으면 입력해주세요</td>
			</tr>
			<tr>
				<td>취미</td>
				<td>
					<input type="checkbox" name="hobby" value="인터넷">인터넷&nbsp;
					<input type="checkbox" name="hobby" value="여행">여행&nbsp;
					<input type="checkbox" name="hobby" value="게임">게임&nbsp;
					<input type="checkbox" name="hobby" value="영화">영화&nbsp;
					<input type="checkbox" name="hobby" value="운동">운동
				</td>
				<td>취미를 선택하세요</td>
			</tr>
			<tr>
				<td>직업</td>
				<td>
					<select name="job">
						<option value="0" selected>선택하세요.
						<option value="회사원">회사원
						<option value="공무원">공무원
						<option value="의사">의사
						<option value="법조인">법조인
						<option value="학생">학생
						<option value="교수">교수
						<option value="기타">기타
					</select>
				</td>
				<td>직업을 선택하세요</td>
			</tr>
			<tr>
				<th colspan="3">
					<input type="button" value="회원가입" onclick="inputCheck();">&emsp;
					<input type="reset" value="다시쓰기">&emsp;
					<input type="button" value="로그인" onclick="location.href='login.jsp'">
				</th>
			</tr>
		</table>
	</form>
</body>
</html>