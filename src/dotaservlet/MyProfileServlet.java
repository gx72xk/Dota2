package dotaservlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dotaclass.Globals;


/**
 * Servlet implementation class MyProfileServlet
 */
@WebServlet(name = "LogoutServlet", urlPatterns = { "/ProfileAction" })
public class MyProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(Globals.username != null){
			response.sendRedirect("/DotaRocks/MyOverview.jsp");
		}else{
			PrintWriter printOut = response.getWriter(); 

			printOut.print("<script language='javascript'>"
					+ "alert('Please login!');"
					+ "window.location.href='/DotaRocks/LoginPage.jsp';"
					+ "</script>");
		}
	}

}
