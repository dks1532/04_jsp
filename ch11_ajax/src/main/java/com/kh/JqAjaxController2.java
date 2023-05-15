package com.kh;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

@WebServlet("/jqAjax2.do")
public class JqAjaxController2 extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		
		// ver1. 응답데이터가 하나의 문자열 일 때
		/*
		String responseData = "이름 : " + name + ", 나이 : " + age;
		response.setContentType("text/html; charset=UTF-8");
		// response.getWriter().print(responseData);
		response.getWriter().print(name);
		response.getWriter().print(age);
		// => success:function의 매개변수에 연이어서 하나의 문자열로 들어감
		 */
		
		// ver2. 응답데이터가 여러개 일 때
		response.setContentType("text/html; charset=UTF-8");
		/*
			JSON(JavaScript Object Notation : 자바스크립트 객체 표기법)
			- ajax 통신시 데이터 전송에 자주 사용되는 포맷형식
				> [value, value, value] => 자바스크립트에서 배열 객체 -> JSONArray
				> {key:value, key:value} => 자바스크립트에서 일반 객체 -> JSONObject
			- 라이브러리 필요
			  검색(json-simple) -> lib 에 넣기
		*/
		
		// var2.1 : JSON 배열로 : JSONArray
		/*
		JSONArray jArr = new JSONArray();
		jArr.add(name);
		jArr.add(age);
		
		// response.setContentType("text/html; charset=UTF-8");	// 일반타입
		response.setContentType("application/json; charset=UTF-8");	// JSON 타입
		response.getWriter().print(jArr);
		*/
		
		// var2.2 : 일반 객체로 -> JSONObject
		JSONObject jObj = new JSONObject();
		jObj.put("name", name);
		jObj.put("age", age);
		
		response.setContentType("application/json; charset=UTF-8");
		response.getWriter().print(jObj);
	}

}
