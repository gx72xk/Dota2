package dotaservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dotaclass.Globals;


/**
 * Servlet implementation class ReplayServlet
 */
@WebServlet("/ReplayServlet")
public class ReplayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String replayIdStr = request.getParameter("replayId");
		String flag = request.getParameter("flag");
		int replayId = Integer.parseInt(replayIdStr);
		Globals.replayId = replayId;
		if(flag.equals("1")){
			response.sendRedirect("/DotaRocks/PlayerInfoPageOfSpecificReplay.jsp");
		}else{
			response.sendRedirect("/DotaRocks/SpecificReplay.jsp");
		}
		
	}

}
