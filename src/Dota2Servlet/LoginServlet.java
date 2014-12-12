package Dota2Servlet;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dota2Class.Globals;
import Dota2Class.User;
import Dota2DAO.APIDAO;
import Dota2DAO.UserDAO;




@WebServlet(name = "LoginServlet", urlPatterns = { "/LoginPage" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");


		APIDAO   apidao=new APIDAO();
		UserDAO dao = new UserDAO();
		User user = dao.selectUserByUsernameAndPassword(username, password);
		if(user == null){
			PrintWriter printOut = response.getWriter(); 

			printOut.print("<script language='javascript'>"
					+ "alert('Please enter the right information!');"
					+ "window.location.href='/DotAHOT/LoginPage.jsp';"
					+ "</script>");
//			response.sendRedirect("/DotAHOT/LoginPage.jsp");
		}
		else{
			
			Globals.username = user.getUsername();
//			System.out.println(Globals.username);
			//UserDAO userDao = new UserDAO();
			Globals.PLAYERSUMMARY = apidao.getPlayerSummaryBySteamId(user.getDota2Account());
			response.sendRedirect("/DotAHOT/MyStatsPageOfOverview.jsp");
//			request.setAttribute("user", user);
//			RequestDispatcher dispatcher = request.getRequestDispatcher("/PlayerInfoPageOfOverview.jsp");
//			dispatcher.forward(request, response);
		}
		

	}

}
