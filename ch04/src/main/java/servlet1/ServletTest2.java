package servlet1;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ServletTest2")
public class ServletTest2 extends HttpServlet {
	public void init(ServletConfig config) throws ServletException {
		// 서블릿 최초로 객체가 생성될 때 1번 호출
		System.out.println("init() 호출....");
	}

	public void destroy() {
		// 서블릿이 삭제될때 1번 호출
		System.out.println("destroy() 호출");
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 클라이언트가 요청이 있을 때 마다 호출
		System.out.println("service() 호출");
	}
}
