package reply;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

@WebServlet("/rlist.bo")
public class AjaxReplyList extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int refnum = Integer.parseInt(request.getParameter("refnum"));

		ArrayList<ReplyBean> alist = new ReplyMgr().getReplyList(refnum);

		response.setContentType("application/json; charset=UTF-8");
		new Gson().toJson(alist, response.getWriter());	
		
	}

}
