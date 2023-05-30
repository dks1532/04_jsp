package com.kh;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

@WebServlet("/searchKH")
public class AjaxSearchKH extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String khname = request.getParameter("khname");
		String addr = request.getParameter("addr");
		String fax = request.getParameter("fax");
		
		KhBean bean = new KhBean();

		bean.setKhname(khname);
		bean.setAddr(addr);
		bean.setFax(fax);
		
		response.setContentType("application/json; charset=UTF-8");
		
		new Gson().toJson(bean, response.getWriter());	
	}

}
