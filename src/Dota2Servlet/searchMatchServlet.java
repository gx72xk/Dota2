package Dota2Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dota2Class.Match;
import Dota2DAO.APIDAO;


/**
 * Servlet implementation class searchMatchServlet
 */
@WebServlet(name = "searchMatchServlet", urlPatterns = { "/searchMatchById", "/resultOfMatchSearchedById" })
public class searchMatchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String matchId = request.getParameter("matchId");
		System.out.println(matchId);
		
		APIDAO dao = new APIDAO();
		
		Match match = new Match();
		match = dao.getMatchForMatchId(matchId);
		
		if(match == null){
			response.sendRedirect("/DotAHOT/LoginPage.jsp");
		}
		else{
			
			request.setAttribute("match", match);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/resultOfMatchSearchedById.jsp");
			dispatcher.forward(request, response);
		}
	}

}
