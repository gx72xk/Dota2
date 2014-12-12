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
import dotaclass.User;



@WebServlet(name = "LoginServlet", urlPatterns = { "/LoginPage" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");


		
		UserDAO dao = new UserDAO();
		User user = dao.selectUserByUsernameAndPassword(username, password);
		if(user == null){
			PrintWriter printOut = response.getWriter(); 

			printOut.print("<script language='javascript'>"
					+ "alert('Please enter the right information!');"
					+ "window.location.href='/DotaRocks/LoginPage.jsp';"
					+ "</script>");
//			response.sendRedirect("/DotAHOT/LoginPage.jsp");
		}
		else{
			
			Globals.username= user.getUsername();
//			System.out.println(Globals.username);
			//UserDAO userDao = new UserDAO();
			Globals.playersummary = dao.getPlayerSummaryBySteamId(user.getSteamid());
			response.sendRedirect("/DotaRocks/MyOverview.jsp");
//			request.setAttribute("user", user);
//			RequestDispatcher dispatcher = request.getRequestDispatcher("/PlayerInfoPageOfOverview.jsp");
//			dispatcher.forward(request, response);
		}
		

	}

}
