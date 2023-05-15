package com.kh;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.google.gson.Gson;

@WebServlet("/jqAjax4.me")
public class JqAjaxController4 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<MemberBean> alist = new MemberMgr().getAllMember();
		
		response.setContentType("application/json; charset=utf-8");
		new Gson().toJson(alist, response.getWriter());
		
		/*
		response.setContentType("application/json; charset=utf-8");
		new Gson().toJson(alist, response.getWriter());
		
		JSONArray jArr = new JSONArray();
		for(MemberBean m : alist) {
			JSONObject jobj = new JSONObject();
			jobj.put("id", m.getId());
			jobj.put("name", m.getName());
			jobj.put("gender", m.getGender());
			jobj.put("email", m.getEmail());
			
			jArr.add(jobj);
		}
		
		response.setContentType("application/json; charset=utf-8");
		response.getWriter().print(jArr);
		*/
	}

}
