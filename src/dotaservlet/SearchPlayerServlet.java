package dotaservlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dota2dao.UserDAO;
import dotaclass.Globals;
import dotaclass.PlayerSummary;

@WebServlet(name = "SearchPlayerServlet")
public class SearchPlayerServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserDAO userDao = new UserDAO();
		Globals.steamid = request.getParameter("steamid");
		PlayerSummary playerSummary = userDao.getPlayerSummaryBySteamId(Globals.steamid);
		// System.out.println(Globals.steamid);

		if (playerSummary == null) {
			PrintWriter printOut = response.getWriter();

			printOut.print("<script language='javascript'>"
					+ "alert('Please enter the right steamid!');"
					+ "window.location.href='/DotaRocks/searchPlayerById.jsp';"
					+ "</script>");
		} else {
			response.sendRedirect("/DotaRocks/PlayerInfoPageOfOverview.jsp");
		}
	}

}
