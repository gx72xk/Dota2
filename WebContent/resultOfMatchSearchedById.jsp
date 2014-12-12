<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
<<<<<<< HEAD
	pageEncoding="ISO-8859-1" import="dota2dao.*, 
	java.text.DecimalFormat, java.util.List, java.util.ArrayList, dotaclass.*"%>
=======
	pageEncoding="ISO-8859-1" import="edu.neu.cs5200.dotahot.matchHistory.*"%>
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



<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/round-about.css" rel="stylesheet">
<title>Player info page of heroes</title>
</head>
<<<<<<< HEAD
<body style="font-family:Comic Sans MS">

<%
	Match match = (Match)request.getAttribute("match");

%>

=======
<body>
<%Dota2API api = new Dota2API();

Match match=api.getMatchByMatchid("989815741"); %>
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
					<li><a href="http://localhost:8080/DotAHOT/LoginPage.jsp">Log
							in</a></li>
					<li><a>|</a></li>
					<li><a href="">Register</a></li>

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
			<li><a href="http://localhost:8080/DotaRocks/searchPlayerById.jsp">Players</a></li>
			<li class="active"><a href="http://localhost:8080/DotaRocks/searchMatchById.jsp">Matches</a></li>
			<li><a href="http://localhost:8080/DotaRocks/articleList.jsp">Articles</a></li>
			<li><a href="http://localhost:8080/DotaRocks/replayList.jsp">Replays</a></li>
		</ul>
	</div>
	
	<div style="padding: 0px 20px 0px 40px">
		<form action="/DotAHOT/searchMatch">
			<div class="col-lg-4" style="float:right">
				<div class="input-group">
						<input name="matchId" type="text" class="form-control" placeholder="Please enter match id"> 
						<span class="input-group-btn">
							<button class="btn btn-primary" type="button" style="width: 50px">GO!</button>
						</span>
				</div>
			</div>	
		</form>
	</div>


	<div class="panel panel-primary" style="margin: 0px 700px 0px 40px">
		
		<div class="panel-heading">
			<h3 class="panel-title">Basic Information</h3>
		</div>
		<table class="table" style="font-weight:bold">
			<thead>
				<tr>
					<th width="80px">Match ID</th>
					<th width="150px">Time Finished</th>
					<th width="80px">Game Mode</th>
					<th width="80px">Result</th>
				</tr>
			</thead>
			<tr>
				<td><%= match.getMatchId() %></td>
				<td><%= match.getTranslateTime() %></td>
				<td><%= match.getGameMode() %></td>
				<td><%= match.getResult()%></td>
=======
			<li><a href="#">My Stats</a></li>
			<li><a href="http://localhost:8080/DotAHOT/searchPlayerById.jsp">Players</a></li>
			<li class="active"><a href="http://localhost:8080/DotAHOT/searchMatchById.jsp">Matches</a></li>
			<li><a href="http://localhost:8080/DotAHOT/heroList.jsp">Heroes</a></li>
			<li><a href="#">Items</a></li>
			<li><a href="http://localhost:8080/DotAHOT/rankBoard.jsp">Rank Board</a></li>
			<li><a href="http://localhost:8080/DotAHOT/articleList.jsp">Articles</a></li>
			<li><a href="http://localhost:8080/DotAHOT/replayList.jsp">Replays</a></li>
			<li><a href="#">Match Calendar</a></li>
		</ul>
	</div>

	<div class="panel panel-primary" style="margin: 0px 800px 0px 40px;">
		<div class="panel-heading">
			<h3 class="panel-title">Basic Information</h3>
		</div>
		<table class="table">
			<th width="50px">Match ID</th>
			<th width="50px">Time Finished</th>
			<th width="50px">Type</th>
			<th width="50px">Result</th>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td><%= match.radiant_win %></td>
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
			</tr>
		</table>
	</div>

	<div class="panel panel-success" style="margin: 20px 40px 0px 40px;">
		<div class="panel-heading">
<<<<<<< HEAD
			<h3 class="panel-title" style="font-weight:bold">RADIANT</h3>
		</div>
		<table class="table table-hover" style="font-weight:bold">
			<thead>
				<tr>
					<th width="200px">Player ID</th>
					<th width="100px">Hero</th>
					<th width="70px">Level</th>
					<th width="100px">KDA</th>
					<th width="100px">LH/DN</th>
					<th width="100px">GPM</th>
					<th width="100px">XPM</th>
					<th width="100px">Damage</th>
					<th width="100px">Healing</th>
					<th>Item</th>
				</tr>
			</thead>
			
			<%
				for(Players player: match.playerRadiant) {
			%>
			<tbody>
				<tr>
					<td style="color:#339900"><%=player.getPlayerId()%></td>
					<td><img style="height:27px" src="http://cdn.dota2.com/apps/dota2/images/heroes/<%=player.getHeroName()%>_lg.png"></td>
					<td><%=player.getLevel()%></td>
					<td><%=player.KDA%>(<%=player.getKills()%>/<%=player.getDeaths()%>/<%=player.getAssists()%>)</td>
					<td><%=player.getLastHits()%>/<%=player.getDenies()%></td>
					<td><%=player.getGpm()%></td>
					<td><%=player.getXpm()%></td>
					<td><%=player.getDamage()%></td>
					<td><%=player.getHealing()%></td>
					<td>
						<%
							if(player.getItem0() != null){
						%>
						<img style="height:27px;" src="http://cdn.dota2.com/apps/dota2/images/items/<%=player.getItem0()%>_lg.png">
						<%
							}
						%>
						<%
							if(player.getItem1()!= null){
						%>
						<img style="height:27px;" src="http://cdn.dota2.com/apps/dota2/images/items/<%=player.getItem1()%>_lg.png">
						<%
							}
						%>
						<%
							if(player.getItem2() != null){
						%>
						<img style="height:27px;" src="http://cdn.dota2.com/apps/dota2/images/items/<%=player.getItem2()%>_lg.png">
						<%
							}
						%>
						<%
							if(player.getItem3() != null){
						%>
						<img style="height:27px;" src="http://cdn.dota2.com/apps/dota2/images/items/<%=player.getItem3()%>_lg.png">
						<%
							}
						%>
						<%
							if(player.getItem4() != null){
						%>
						<img style="height:27px;" src="http://cdn.dota2.com/apps/dota2/images/items/<%=player.getItem4()%>_lg.png">
						<%
							}
						%>
						<%
							if(player.getItem5() != null){
						%>
						<img style="height:27px;" src="http://cdn.dota2.com/apps/dota2/images/items/<%=player.getItem5()%>_lg.png">
						<%
							}
						%>
					</td>
				</tr>
			</tbody>
			<%
				}
			%>
=======
			<h3 class="panel-title">RADIANT</h3>
		</div>
		<table class="table">
			<th width="100px">Player ID</th>
			<th width="100px">Hero</th>
			<th width="100px">Level</th>
			<th width="100px">KDA</th>
			<th width="100px">Last Hits</th>
			<th width="100px">Denies</th>
			<th width="100px">GPM</th>
			<th width="100px">XPM</th>
			<th width="100px">Damage</th>
			<th width="100px">Healing</th>
			<th>Item</th>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
		</table>
	</div>
	
	<div class="panel panel-danger" style="margin: 20px 40px 0px 40px;">
		<div class="panel-heading">
<<<<<<< HEAD
			<h3 class="panel-title" style="font-weight:bold">DIRE</h3>
		</div>
		<table class="table table-hover"style="font-weight:bold">
			<thead>
				<tr>
					<th width="200px">Player ID</th>
					<th width="100px">Hero</th>
					<th width="70px">Level</th>
					<th width="100px">KDA</th>
					<th width="100px">LH/DN</th>
					<th width="100px">GPM</th>
					<th width="100px">XPM</th>
					<th width="100px">Damage</th>
					<th width="100px">Healing</th>
					<th>Item</th>
				</tr>
			</thead>
			
			<%
					for(Players player: match.playerDire) {
			%>
			<tbody>
				<tr>
					<td style="color:#990000"><%= player.getPlayerId() %></td>
					<td><img style="height:27px" src="http://cdn.dota2.com/apps/dota2/images/heroes/<%= player.getHeroName() %>_lg.png"></td>
					<td><%= player.getLevel() %></td>
					<td><%=player.KDA%>(<%= player.getKills()%>/<%= player.getDeaths() %>/<%= player.getAssists() %>)</td>
					<td><%= player.getLastHits() %>/<%= player.getDenies() %></td>
					<td><%= player.getGpm() %></td>
					<td><%= player.getXpm() %></td>
					<td><%= player.getDamage() %></td>
					<td><%= player.getHealing() %></td>
					<td>
						<%if(player.getItem0() != null){ %>
						<img style="height:27px;" src="http://cdn.dota2.com/apps/dota2/images/items/<%= player.getItem0() %>_lg.png">
						<% } %>
						<%if(player.getItem1()!= null){ %>
						<img style="height:27px;" src="http://cdn.dota2.com/apps/dota2/images/items/<%= player.getItem1() %>_lg.png">
						<% } %>
						<%if(player.getItem2() != null){ %>
						<img style="height:27px;" src="http://cdn.dota2.com/apps/dota2/images/items/<%= player.getItem2() %>_lg.png">
						<% } %>
						<%if(player.getItem3() != null){ %>
						<img style="height:27px;" src="http://cdn.dota2.com/apps/dota2/images/items/<%= player.getItem3() %>_lg.png">
						<% } %>
						<%if(player.getItem4() != null){ %>
						<img style="height:27px;" src="http://cdn.dota2.com/apps/dota2/images/items/<%= player.getItem4() %>_lg.png">
						<% } %>
						<%if(player.getItem5() != null){ %>
						<img style="height:27px;" src="http://cdn.dota2.com/apps/dota2/images/items/<%= player.getItem5() %>_lg.png">
						<% } %>
					</td>
				</tr>
			</tbody>
			<%
			}
			%>
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
			<h3 class="panel-title">DIRE</h3>
		</div>
		<table class="table">
			<th width="100px">Player ID</th>
			<th width="100px">Hero</th>
			<th width="100px">Level</th>
			<th width="100px">KDA</th>
			<th width="100px">Last Hits</th>
			<th width="100px">Denies</th>
			<th width="100px">GPM</th>
			<th width="100px">XPM</th>
			<th width="100px">Damage</th>
			<th width="100px">Healing</th>
			<th>Item</th>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			
		</table>
	</div>
	
	
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
</body>
</html>