<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
<<<<<<< HEAD
	pageEncoding="ISO-8859-1" import="dotaclass.*, dota2dao.*"%>
=======
	pageEncoding="ISO-8859-1" import="Dota2Class.*"%>
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


<script src="js/jquery.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/round-about.css" rel="stylesheet">
<<<<<<< HEAD
<title>My profile page of overview</title>
</head>


<body style="font-family:Comic Sans MS">

<%
	APIDAO matchDao = new APIDAO();
	Match[] match = new Match[10];
	match = matchDao.getMyMatchHistory(Globals.playersummary.steamId);
 	Match[] matches = new Match[10];
 	 for(int i = 0; i < 10; i++){
	    	
 	    	matches[i] = new Match();
 	    	matches[i] = matchDao.getMyMatchByMatchId(match[i].getMatchId(), Globals.playersummary.getSteamId());
	    	
	    	
 	    }
%>
=======
<title>Player info page of overview</title>
</head>
<body>
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
					<li><a id="login" href="http://localhost:8080/DotaRocks/LoginPage.jsp">Log in</a></li>
					<li><a>|</a></li>
					<li><a id="logout" href="http://localhost:8080/DotaRocks/Register.jsp">Register</a></li>
=======
					<li><a id="login">Log in</a></li>
					<li><a>|</a></li>
					<li><a id="logout" onclick="logOut()">Log Out</a></li>
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7

				</ul>

			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

<<<<<<< HEAD
	<div style="padding: 0px 40px 20px 40px" >
		<ul class="nav nav-tabs">
			<li class="active"><a href="/DotaRocks/ProfileAction">My Profile</a></li>
			<li><a href="http://localhost:8080/DotaRocks/searchPlayerById.jsp">Players</a></li>
			<li><a href="http://localhost:8080/DotaRocks/searchMatchById.jsp">Matches</a></li>
			<li><a href="http://localhost:8080/DotaRocks/articleList.jsp">Articles</a></li>
			<li><a href="http://localhost:8080/DotaRocks/replayList.jsp">Replays</a></li>
=======
	<div style="padding: 0px 40px 20px 40px">
		<ul class="nav nav-tabs">
			<li class="active"><a href="http://localhost:8080/DotAHOT/MyStatsPageOfOverview.jsp">My Stats</a></li>
			<li><a href="http://localhost:8080/DotAHOT/searchPlayerById.jsp">Players</a></li>
			<li><a href="http://localhost:8080/DotAHOT/searchMatchById.jsp">Matches</a></li>
			<li><a href="http://localhost:8080/DotAHOT/heroList.jsp">Heroes</a></li>
			<li><a href="#">Items</a></li>
			<li><a href="http://localhost:8080/DotAHOT/rankBoard.jsp">Rank Board</a></li>
			<li><a href="http://localhost:8080/DotAHOT/articleList.jsp">Articles</a></li>
			<li><a href="http://localhost:8080/DotAHOT/replayList.jsp">Replays</a></li>
			<li><a href="#">Match Calendar</a></li>
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
		</ul>
	</div>


	<div class="row">
		<div class="col-sm-2 text-center col-sm-offset-5">
			<img class="img-circle img-responsive img-center"
				src=<%= Globals.playersummary.getAvatarFull() %> alt="">
		</div>
	</div>
<<<<<<< HEAD
	<div class="row" >
		<div class="col-sm-6 text-center col-sm-offset-3">
			<h3 align="center" ><%= Globals.playersummary.getPersonName() %></h3>
=======
	<div class="row">
		<div class="col-sm-6 text-center col-sm-offset-3">
			<h3 align="center"><%= Globals.playersummary.getPersonName() %></h3>
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
		</div>
	</div>

	<div style="margin: 0px 40px 0px 40px">
		<ul class="nav nav-pills">
<<<<<<< HEAD
			<li class="active"><a href="http://localhost:8080/DotaRocks/MyOverview.jsp">Overview</a></li>
			<li><a href="http://localhost:8080/DotaRocks/MyArticles.jsp">Articles</a></li>
			<li><a href="http://localhost:8080/DotaRocks/MyReplays.jsp">Replays</a></li>
			<li><a href="http://localhost:8080/DotaRocks/MyFriends.jsp">Friends</a></li>
		</ul>
	</div>

	<div style="margin: 0px 40px 0px 40px">
		<table class="table table-bordered" style="font-size:15px;font-weight: bold" >
			<thead>
				<tr>
					<th>Steam ID</th>
					<th>Account Create Time</th>
					<th>Community Visibility State</th>
					<th>Personal State</th>
					<th>Last Log Off Time</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><%= Globals.playersummary.getSteamId() %></td>
					<td><%= Globals.playersummary.getTranslatedTimeCreated() %></td>
					<td><%= Globals.playersummary.getCommunityVisibilityState() %></td>
					<td><%= Globals.playersummary.getPersonaState() %></td>
					<td><%= Globals.playersummary.getTranslateedLastLogOff() %></td>
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
					<td>21</td>
					<td>35</td>
					<td>3.88</td>
					<td>56/21/4</td>
					<td>69.14%</td>
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
				</tr>
			</tbody>
		</table>
	</div>

<<<<<<< HEAD
	<div class="panel panel-primary" style="margin: 40px 40px 40px 40px;">
		<div class="panel-heading">
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
					<td ><a href="/DotaRocks/searchMatch?matchId=<%= match[i].matchId %>"><%= match[i].matchId %></a></td>
					<td><%=matches[i].getTranslateTime()%></td>
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
		
</script>

=======
	<div class="panel panel-primary" style="margin: 0px 40px 0px 40px;">
		<div class="panel-heading">
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
			<th>Match ID</th>
			<th>Time finished</th>
			<th>Result</th>
			<th>KDA</th>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</table>
	</div>
<script>
	if(<%= Globals.username != null %>){
		document.getElementById("login").innerHTML= "<%= Globals.username%>";
	}
		
	function logOut(){
		window.location.href="/DotAHOT/LoginPage.jsp";
		<% Globals.username = null;%> ;
		console.log(<%= Globals.username %>);
	}
</script>
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
</body>
</html>