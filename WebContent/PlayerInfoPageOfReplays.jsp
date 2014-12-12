<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="dotaclass.*, dota2dao.*,java.util.*"%>

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
<script type="text/javascript" src="js/jquery.js"></script>
<title>Player Info Page Of Replays</title>
</head>
<body style="font-family:Comic Sans MS">

<%
	UserDAO userDao = new UserDAO();
	List<Replay> replays = new ArrayList<Replay>();
	PlayerSummary playerSummary = userDao.getPlayerSummaryBySteamId(Globals.steamid);
	User user = userDao.findUserBySteamId(Globals.steamid);
	if(user != null){

	ManagerDAO replayDao = new ManagerDAO();
	replays = replayDao.findAllReplaysByUsername(user.getUsername());
	
	}
%>


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
					href="http://localhost:8080/DotaRocks/dotaHotIndex.jsp">DOTA HOT</a>
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
					<li><a id="login" href="http://localhost:8080/DotaRocks/LoginPage.jsp">Login</a></li>
					<li><a>|</a></li>
					<li><a id="logout" href="http://localhost:8080/DotaRocks/registerPage.jsp">Register</a></li>

				</ul>

			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

	<div style="padding: 0px 40px 20px 40px">
		<ul class="nav nav-tabs">
			<li class="active"><a href="/DotaRocks/ProfileAction">My Profile</a></li>
			<li><a href="http://localhost:8080/DotaRocks/searchPlayerById.jsp">Players</a></li>
			<li><a href="http://localhost:8080/DotaRocks/searchMatchById.jsp">Matches</a></li>
			<li><a href="http://localhost:8080/DotaRocks/articleList.jsp">Articles</a></li>
			<li><a href="http://localhost:8080/DotaRocks/replayList.jsp">Replays</a></li>
		</ul>
	</div>


	<div class="row">
		<div class="col-sm-2 text-center col-sm-offset-5">
			<img class="img-circle img-responsive img-center"
				src=<%= playerSummary.getAvatarFull() %> alt="">
		</div>
	</div>
	<div class="row">
		<div class="col-sm-6 text-center col-sm-offset-3">
			<h3 align="center"><%= playerSummary.getPersonName() %></h3>
		</div>
	</div>

	<div style="margin: 0px 40px 0px 40px">
		<ul class="nav nav-pills">
			<li><a href="http://localhost:8080/DotaRocks/PlayerInfoPageOfOverview.jsp">Overview</a></li>
			<li><a href="http://localhost:8080/DotaRocks/PlayerInfoPageOfArticles.jsp">Articles</a></li>
			<li class="active"><a href="http://localhost:8080/DotaRocks/PlayerInfoPageOfReplays.jsp">Replays</a></li>
		</ul>
	</div>

	<div class="panel panel-primary" style="margin: 0px 40px 0px 40px;">
		<div class="panel-heading">
			<h3 class="panel-title">Replay List</h3>
		</div>
		<table class="table-hover">
			<thead>
				<tr>
					<th width="700px">Title</th>
					<th width="300px">Date</th>
					<th width="150px">Like</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
			<%
				if(replays != null){
					for(Replay replay : replays){
			%>
				<tr>
					<td><a href="/DotaRocks/ReplayAction?replayId=<%= replay.getId() %>&flag=1"><%= replay.getTitle() %></a></td>
					<td><%= replay.getPostedDate() %></td>
					<td><%= replay.getLiked() %></td>
				</tr>
			<% } 
			}%>
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

</body>
</html>