package dotaservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dotaclass.Globals;

/**
 * Servlet implementation class ArticleServlet
 */
@WebServlet(name = "ArticleServlet")
public class ArticleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String articleIdStr = request.getParameter("articleId");
		String flag = request.getParameter("flag");
		int articleId = Integer.parseInt(articleIdStr);
		Globals.articleId = articleId;
		if(flag.equals("1")){
			response.sendRedirect("/DotaRocks/PlayerInfoPageOfSpecificArticle.jsp");
		}else{
			response.sendRedirect("/DotaRocks/SpecificArticle.jsp");
		}
	}

}
