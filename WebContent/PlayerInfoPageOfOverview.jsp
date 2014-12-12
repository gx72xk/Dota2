<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
<<<<<<< HEAD
	pageEncoding="ISO-8859-1" import="dotaclass.*, dota2dao.*, java.io.*"%>
=======
	pageEncoding="ISO-8859-1" import="edu.neu.cs5200.dotahot.matchHistory.*,edu.neu.cs5200.dotahot.*,java.math.BigDecimal.*"%>
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7

<!DOCTYPE html >
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">


<<<<<<< HEAD
<script src="js/jquery.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/round-about.css" rel="stylesheet">
<title>Player Info page of overview</title>
</head>
<body style="font-family:Comic Sans MS">



<%

	UserDAO userDao = new UserDAO();
    FriendDAO dao=new FriendDAO();
	Friendlist friend = new Friendlist();
	PlayerSummary playerSummary = userDao.getPlayerSummaryBySteamId(Globals.steamid);

	APIDAO matchDao = new APIDAO();
	Match[] match = new Match[10];
	match = matchDao.getMyMatchHistory(playerSummary.steamId);
 	Match[] matches = new Match[10];
 	for(int i = 0; i < 10; i++){
	    	
 	    matches[i] = new Match();
 	    matches[i] = matchDao.getMyMatchByMatchId(match[i].getMatchId(), playerSummary.getSteamId());
	
 	}
 	
 	User user = userDao.findUserBySteamId(Globals.steamid);
 	if(user != null){
 		friend = dao.findFriendList(Globals.username, user.getUsername());
 	}else{
 		friend = null;
 	}
 	
  	String action = request.getParameter("action");
  	if("addFriend".equals(action)){
  		if(Globals.username != null){
  			if(user != null){
	  			if(friend == null){
		  	
		  		dao.addFriend(Globals.username, user.getUsername()); 
		  		PrintWriter printOut = response.getWriter(); 
		
		 		printOut.print("<script language='javascript'>"
		 				+ "alert('Add friend successful!');"
		 				+ "location.reload();"
		 				+ "</script>");
	  			}
  			}
	  	}else{
	  		PrintWriter printOut = response.getWriter(); 
	  		
	 		printOut.print("<script language='javascript'>"
	 				+ "alert('please login first in you want to add friend.');"
	 				+ "</script>");
  		}
  	}
 	
%>

=======

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/round-about.css" rel="stylesheet">
<title>Player info page of overview</title>
</head>
<body>
  <%
      Dota2API api=new Dota2API();
      Players players=api.getPlayerSummary(Globals.steamid);
   // System.out.println(Globals.steamid);
    Myinfoapi api1=new Myinfoapi();
    Match[] match=new Match[10];
    	match=api1.getMatchByAccountid(Globals.steamid);
    //System.out.println(match[8].myinfo.heroname);
    Mymatch dao=new Mymatch();
    Match[] matches=new Match[10];
    for(int i=0;i<10;i++){
    	
    	matches[i]=new Match();
    	matches[i]=dao.getMatch(match[i].match_id);
    	
    	
    }
  System.out.println(matches[1].player.item_5);
    
   %>
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7

	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand"
<<<<<<< HEAD
					href="http://localhost:8080/DotaRocks/dotaHotIndex.jsp">DOTA HOT</a>
=======
					href="http://localhost:8080/DotAHOT/dotaHotIndex.jsp">DOTA HOT</a>
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="#">About</a></li>
					<li><a href="#">Services</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
<<<<<<< HEAD
					<li><a id="login" href="http://localhost:8080/DotaRocks/LoginPage.jsp">Login</a></li>
					<li><a>|</a></li>
					<li><a id="logout" onclick="logOut()">Register</a></li>
=======
					<li><a href="http://localhost:8080/DotAHOT/LoginPage.jsp">Login</a></li>
					<li><a>|</a></li>
					<li><a href="http://localhost:8080/DotAHOT/registerPage.jsp">Register</a></li>
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7

				</ul>

			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

	<div style="padding: 0px 40px 20px 40px">
		<ul class="nav nav-tabs">
<<<<<<< HEAD
			<li><a href="/DotaRocks/ProfileAction">My Profile</a></li>
			<li  class="active"><a href="http://localhost:8080/DotaRocks/searchPlayerById.jsp">Players</a></li>
			<li><a href="http://localhost:8080/DotaRocks/searchMatchById.jsp">Matches</a></li>
			<li><a href="http://localhost:8080/DotaRocks/articleList.jsp">Articles</a></li>
			<li><a href="http://localhost:8080/DotaRocks/replayList.jsp">Replays</a></li>
		</ul>
	</div>

=======
			<li><a href="#">My Stats</a></li>
			<li class="active"><a href="http://localhost:8080/DotAHOT/searchPlayerById.jsp">Players</a></li>
			<li><a href="http://localhost:8080/DotAHOT/searchMatchById.jsp">Matches</a></li>
			<li><a href="http://localhost:8080/DotAHOT/heroList.jsp">Heroes</a></li>
			<li><a href="#">Items</a></li>
			<li><a href="http://localhost:8080/DotAHOT/rankBoard.jsp">Rank Board</a></li>
			<li><a href="http://localhost:8080/DotAHOT/articleList.jsp">Articles</a></li>
			<li><a href="http://localhost:8080/DotAHOT/replayList.jsp">Replays</a></li>
			<li><a href="#">Match Calendar</a></li>
		</ul>
	</div>
 
   
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7

	<div class="row">
		<div class="col-sm-2 text-center col-sm-offset-5">
			<img class="img-circle img-responsive img-center"
<<<<<<< HEAD
				src=<%= playerSummary.getAvatarFull() %> alt="">
=======
				src="<%=players.avatarfull %>" alt="">
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
		</div>
	</div>
	<div class="row">
		<div class="col-sm-6 text-center col-sm-offset-3">
<<<<<<< HEAD
			<h3 align="center"><%= playerSummary.getPersonName() %></h3>
=======
			<h3 align="center"><%=players.personaname %></h3>
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
		</div>
	</div>

	<div style="margin: 0px 40px 0px 40px">
		<ul class="nav nav-pills">
<<<<<<< HEAD
			<li class="active"><a href="http://localhost:8080/DotaRocks/PlayerInfoPageOfOverview.jsp">Overview</a></li>
			<li><a href="http://localhost:8080/DotaRocks/PlayerInfoPageOfArticles.jsp">Articles</a></li>
			<li><a href="http://localhost:8080/DotaRocks/PlayerInfoPageOfReplays.jsp">Replays</a></li>
		</ul>
	</div>

	<div style="margin: 0px 40px 0px 40px">
		<form>
			<table class="table table-bordered"style="font-size:15px;font-weight: bold">
				<thead>
					<tr>
						<th>Steam ID</th>
						<th>Account Create Time</th>
						<th>Community Visibility State</th>
						<th>Personal State</th>
						<th>Last Log Off Time</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><%= playerSummary.getSteamId() %></td>
						<td><%= playerSummary.getTranslatedTimeCreated() %></td>
						<td><%= playerSummary.getCommunityVisibilityState() %></td>
						<td><%= playerSummary.getPersonaState() %></td>
						<td><%= playerSummary.getTranslateedLastLogOff() %></td>
						<td><button id="username" class="btn btn-info">Not Register</button></td>
					</tr>
				</tbody>
			</table>
		</form>
=======
			<li class="active"><a href="http://localhost:8080/DotAHOT/PlayerInfoPageOfOverview.jsp">Overview</a></li>
			<li><a href="http://localhost:8080/DotAHOT/PlayerInfoPageOfMatches.jsp">Matches</a></li>
			<li><a href="http://localhost:8080/DotAHOT/PlayerInfoPageOfHeroes.jsp">Heros</a></li>
			<li><a href="http://localhost:8080/DotAHOT/PlayerInfoPageOfRecords.jsp">Records</a></li>
			<li><a href="http://localhost:8080/DotAHOT/PlayerInfoPageOfArticles.jsp">Articles</a></li>
			<li><a href="http://localhost:8080/DotAHOT/PlayerInfoPageOfReplays.jsp">Replays</a></li>
		</ul>
	</div>

	<div style="margin: 0px 40px 0px 40px;">
		<table class="table table-bordered">
			<th>Level</th>
			<th>Rank</th>
			<th>Average KDA</th>
			<th>Win/Lose/Run</th>
			<th>Win Rate</th>
			<tbody>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</tbody>
		</table>
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
	</div>

	<div class="panel panel-primary" style="margin: 0px 40px 0px 40px;">
		<div class="panel-heading">
<<<<<<< HEAD
			<h3 class="panel-title">Latest 10 matches</h3>
		</div>
		<table class="table"style="font-size:17px;font-weight: bold ">
			<thead>
				<tr>
					<th>Hero</th>
					<th>Items</th>
					<th>Match ID</th>
					<th>Time finished</th>
					<th>Result</th>
					<th>KDA(K/D/A)</th>
				</tr>
			</thead>

			<tbody>
<% 
 			for(int i=0;i<10;i++)
 			{
 %> 
				<tr>
					<td><img style="height:40px" src="http://cdn.dota2.com/apps/dota2/images/heroes/<%=match[i].myinfo.herolocalname%>_lg.png">
						<font><%=match[i].myinfo.heroname %></font> </td>
					<td><%if(matches[i].player.item0!= null){ %>
						<img style="height:33px;" src="http://cdn.dota2.com/apps/dota2/images/items/<%= matches[i].player.item0 %>_lg.png">
						<% } %>
						<%if(matches[i].player.item1!= null){ %>
	                    <img style="height:33px;" src="http://cdn.dota2.com/apps/dota2/images/items/<%= matches[i].player.item1 %>_lg.png">
						<% } %>
						<%if(matches[i].player.item2!= null){ %>
						<img style="height:33px;" src="http://cdn.dota2.com/apps/dota2/images/items/<%= matches[i].player.item2%>_lg.png">
						<% } %>
						<%if(matches[i].player.item3!= null){ %>
						<img style="height:33px;" src="http://cdn.dota2.com/apps/dota2/images/items/<%= matches[i].player.item3%>_lg.png">
						<% } %>
						<%if(matches[i].player.item4!= null){ %>
						<img style="height:33px;" src="http://cdn.dota2.com/apps/dota2/images/items/<%= matches[i].player.item4 %>_lg.png">
					    <% } %>
						<%if(matches[i].player.item5!= null){ %>
						<img style="height:33px;" src="http://cdn.dota2.com/apps/dota2/images/items/<%= matches[i].player.item5 %>_lg.png">
						<% } %>
						</td>
					<td><a href="/DotaRocks/searchMatch?matchId=<%= match[i].matchId %>"><%=match[i].matchId %></a></td>
					<td><%=matches[i].getTranslateTime() %></td>
					<td style="color:<%=matches[i].color%>"><%=matches[i].result%></td>
					<td><%=matches[i].player.KDA %>(<%=matches[i].player.kills %>/<%=matches[i].player.deaths %>/<%=matches[i].player.assists %>)</td>
				</tr>
			<%} %>
			</tbody>
		</table>
	</div>
	
<script>

	if(<%= Globals.username != null %>){ 
		document.getElementById("login").innerHTML = "<%= Globals.username %>";
		var login = document.getElementById("login");
		login.setAttribute("href", "http://localhost:8080/DotaRocks/InfoEditorPage.jsp");
		document.getElementById("logout").innerHTML = "Logout";
		var logout = document.getElementById("logout");
		logout.setAttribute("href", "/DotaRocks/LogoutAction");
	}
	


 	
 	if(<%= user != null %>){
 		if(<%= friend == null %>){
	 		document.getElementById("username").innerHTML = "Follow";
	 		var friend = document.getElementById("username");
	 		friend.setAttribute("name", "action");
	 		friend.setAttribute("value", "addFriend");
	 	}else{
	 		document.getElementById("username").innerHTML = "Followed";
	 	}
 	}
 	
 	

 	
	
</script>
=======
			<h3 class="panel-title">Most played heroes</h3>
		</div>
		<table class="table">
			<th>Hero</th>
			<th>Played times</th>
			<th>Win rate</th>
			<th>KDA</th>
			<th>Average KDA</th>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</table>
	</div>
	<div class="panel panel-primary" style="margin: 0px 40px 0px 40px;">
		<div class="panel-heading">
			<h3 class="panel-title">Latest 10 matches</h3>
		</div>
		<table class="table">
			<th>Hero</th>
			<th>Items</th>
			<th>Match ID</th>
			<th>Time finished</th>
			<th>Result</th>
			<th>KDA(K/D/A)</th>
			
			<tr><%
			for(int i=0;i<10;i++){%>
			<tbody>
				<td><img style="height:40px" src="http://cdn.dota2.com/apps/dota2/images/heroes/<%=match[i].myinfo.herolocalname%>_lg.png"> <font><%=match[i].myinfo.heroname %></font> </td>
				<td><%if(matches[i].player.item_0!= null){ %>
						<img style="height:33px;" src="http://cdn.dota2.com/apps/dota2/images/items/<%= matches[i].player.item_0 %>_lg.png">
						<% } %>
						<%if(matches[i].player.item_1!= null){ %>
                       <img style="height:33px;" src="http://cdn.dota2.com/apps/dota2/images/items/<%= matches[i].player.item_1 %>_lg.png">
						<% } %>
						<%if(matches[i].player.item_2!= null){ %>
						<img style="height:33px;" src="http://cdn.dota2.com/apps/dota2/images/items/<%= matches[i].player.item_2%>_lg.png">
						<% } %>
					<%if(matches[i].player.item_3!= null){ %>
						<img style="height:33px;" src="http://cdn.dota2.com/apps/dota2/images/items/<%= matches[i].player.item_3%>_lg.png">
						<% } %>
					<%if(matches[i].player.item_4!= null){ %>
						<img style="height:33px;" src="http://cdn.dota2.com/apps/dota2/images/items/<%= matches[i].player.item_4 %>_lg.png">
					     <% } %>
					<%if(matches[i].player.item_5!= null){ %>
						<img style="height:33px;" src="http://cdn.dota2.com/apps/dota2/images/items/<%= matches[i].player.item_5 %>_lg.png">
						<% } %>
						</td>
						<td> <%=match[i].match_id %></td>
						<td><%=matches[i].getTimefinished() %></td>
				<td><%=matches[i].radiant_win%></td>
				<td><%=matches[i].player.KDA %>(<%=matches[i].player.kills %>/<%=matches[i].player.deaths %>/<%=matches[i].player.assists %>)</td>
			</tr>
			</tbody>
			<%} %>
		</table>
	</div>
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7

</body>
</html>