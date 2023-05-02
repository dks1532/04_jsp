function idCheck(id) {
	if(id == "") {
		alert("아이디를 입력해 주세요");
		regfrm.id.focus();
		return;
	}
	url = "idCheck.jsp?id=" + id;	/* 파일명?넘겨줄파라미터이름=파라미터값 */
	window.open(url, "IDCheck", "width=300, height=150");
}