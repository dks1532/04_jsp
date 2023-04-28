function inputCheck() {
    if(regFrm.id.value == "") {
        alert("아이디를 넣어주세요");
        regFrm.id.focus();
        return;
    }
    if(regFrm.pw.value == "") {
        alert("비밀번호를 넣어주세요");
        regFrm.pw.focus();
        return;
    }
    if(regFrm.rePw.value == "") {
        alert("비밀번호를 넣어주세요");
        regFrm.rePw.focus();
        return;
    }
    if(regFrm.rePw.value != regFrm.pw.value) {
        alert("비밀번호가 일치하지 않습니다");
        regFrm.rePw.focus();
        return;
    }
    if(regFrm.name.value == "") {
        alert("이름을 넣어주세요");
        regFrm.rePw.focus();
        return;
    }
    regFrm.submit();
}