package Dota2Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dota2Class.Globals;
import Dota2Class.PlayerSummary;
import Dota2Class.Players;
import Dota2DAO.APIDAO;

@WebServlet(name = "searchPlayerById", urlPatterns = { "/PlayerInfoPageOfOverview" })
public class searchPlayerById extends HttpServlet {
	private static final long serialVersionUID = 1L;
   


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
            APIDAO api1 = new APIDAO();
			Globals.steamid=request.getParameter("steamid");
			PlayerSummary player=api1.getPlayerSummaryBySteamId(Globals.steamid);
			//System.out.println(Globals.steamid);
      
           
      
    if(player==null){
    	response.sendRedirect("/DotAHOT/searchPlayerById.jsp");
    }
    else
    {    request.setAttribute("player", player);
        RequestDispatcher dis =request.getRequestDispatcher("/PlayerInfoPageOfOverview.jsp");
        dis.forward(request, response);    
        //request.setAttribute("match", match);
       // RequestDispatcher dis1=request.getRequestDispatcher("/PlayerInfoPageOfOverview.jsp");
        //dis1.forward(request, response);  
	}
}}
