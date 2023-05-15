package com.kh;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.google.gson.Gson;

@WebServlet("/jqAjax3.me")
public class JqAjaxController3 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id3");
		MemberBean bean = new MemberMgr().getMember(id);
		
		// 1. 하나의 문자열로 반환
		// response.getWriter().print(bean);
		
		// 2. JSONObject
		/*
		JSONObject jObj = new JSONObject();
		jObj.put("userId", bean.getId());
		jObj.put("userName", bean.getName());
		jObj.put("gender", bean.getGender());
		jObj.put("email", bean.getEmail());
		
		response.setContentType("application/json; charset=utf-8");
		response.getWriter().print(jObj);
		*/
		
		// 3. GSON
		/*
		 JSON과정을 알아서 해주는 GSON라이브러리
		 
		 검색어 (mvnrepository)
		*/
		response.setContentType("application/json; charset=utf-8");
		/*
		Gson gson = new Gson();
		gson.toJson(bean, response.getWriter());
		*/
		new Gson().toJson(bean, response.getWriter());
	}

}
