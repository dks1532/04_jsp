package com.kh;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/idCheck.me")
public class AjaxIdCheckController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String checkId = request.getParameter("checkId");

		boolean result = new MemberMgr().checkId(checkId);
		
		/* 되돌려 주는 값에 한글이 없을 경우 생략해도 됨
		response.setContentType("text/html; charset=UTF-8");
		*/
		
		if(result) {
			response.getWriter().print("idN");	// id가 있어서 쓸 수 없음
		} else {
			response.getWriter().print("idY");
		}
	}

}
