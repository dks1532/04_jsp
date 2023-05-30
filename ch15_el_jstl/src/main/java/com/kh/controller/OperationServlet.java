package com.kh.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.model.vo.Person;

@WebServlet("/operation.do")
public class OperationServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("big", 10);
		request.setAttribute("small", 3);
		
		request.setAttribute("sOne", "");
		request.setAttribute("sTwo", "");
		
		request.setAttribute("pOne", new Person("", 20, ""));
		request.setAttribute("pTwo", null);
		
		ArrayList<String> list1 = new ArrayList<String>();
		request.setAttribute("aOne", list1);
		
		ArrayList<String> list2 = new ArrayList<String>();
		list2.add("점심 맛있게 먹었나요?");
		request.setAttribute("aTwo", list2);
		
		request.getRequestDispatcher("views/1_EL/02.elOperation.jsp").forward(request, response);
	}

}
