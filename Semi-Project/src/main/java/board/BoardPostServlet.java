package board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/board/boardPost")
public class BoardPostServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		/*
		BoardMgr bmgr = new BoardMgr();
		bmgr.insertBoard(request);
		*/
		new BoardMgr().insertBoard(request);
		response.sendRedirect("list.jsp");
	}

}
