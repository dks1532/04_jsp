package reply;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/rinsert.bo")
public class AjaxReplyInsert extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String content = request.getParameter("content");
		int refnum = Integer.parseInt(request.getParameter("refnum"));
		String name = request.getParameter("name");
		
		ReplyBean bean = new ReplyBean();
		bean.setContent(content);
		bean.setRef(refnum);
		bean.setName(name);
		
		int result = new ReplyMgr().insertReply(bean);
		
		response.getWriter().print(result);
	}

}
