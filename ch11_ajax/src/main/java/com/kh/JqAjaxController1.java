package com.kh;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/jqAjax1.do")
public class JqAjaxController1 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String str = request.getParameter("input");
		System.out.println("요청시 전달값 : " + str);
		
		// DB에서 요청처리를 다했다는 가정하에 응답할 데이터
		String responseDate = "입력된 값 : " + str + ", 길이 : " + str.length();
		
		// 응답데이터 돌려주기
		response.setContentType("text/html; charset=UTF-8");
		response.getWriter().print(responseDate);
	}

}
