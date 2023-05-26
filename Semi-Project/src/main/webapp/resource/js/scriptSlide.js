$(function() {
     // 각각 내려오기
    $(".nav>li").mouseover(function() {
    // mouseover는 내부안에 들어오면 mouseenter와 비슷
        $(this).children(".submenu").stop().slideDown(); // .stop(): 다른 이벤트가 발생되면 스택에 쌓여진 것을 지우고 처음상태로 돌아감
    });
    $(".nav>li").click(function() {
        // mouseover는 내부안에 들어오면 mouseenter와 비슷
            $(this).children(".submenu").stop().slideUp();
    });
})