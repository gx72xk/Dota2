<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
<<<<<<< HEAD
	pageEncoding="ISO-8859-1" import="dotaclass.*, dota2dao.*, java.util.*"%>
=======
	pageEncoding="ISO-8859-1"%>
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
<<<<<<< HEAD
<script type="text/javascript" src="js/jquery.js"></script>
<title>Player info page of articles</title>
</head>
<body style="font-family:Comic Sans MS">

<%
	UserDAO userDao = new UserDAO();
	List<Article> articles = new ArrayList<Article>();
	PlayerSummary playerSummary = userDao.getPlayerSummaryBySteamId(Globals.steamid);
	User user = userDao.findUserBySteamId(Globals.steamid);
	if(user != null){

	ManagerDAO articleDao = new ManagerDAO();
	articles = articleDao.findAllArticlesByUsername(user.getUsername());
	
	}
%>

=======
<title>Player info page of articles</title>
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
					<li><a id="login" href="http://localhost:8080/DotaRocks/LoginPage.jsp">Login</a></li>
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
			<li class="active"><a href="http://localhost:8080/DotaRocks/searchPlayerById.jsp">Players</a></li>
			<li><a href="http://localhost:8080/DotaRocks/searchMatchById.jsp">Matches</a></li>
			<li><a href="http://localhost:8080/DotaRocks/articleList.jsp">Articles</a></li>
			<li><a href="http://localhost:8080/DotaRocks/replayList.jsp">Replays</a></li>
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
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
		</ul>
	</div>


	<div class="row">
		<div class="col-sm-2 text-center col-sm-offset-5">
			<img class="img-circle img-responsive img-center"
<<<<<<< HEAD
				src=<%= playerSummary.getAvatarFull() %> alt="">
=======
				src="http://placehold.it/200x200" alt="">
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
		</div>
	</div>
	<div class="row">
		<div class="col-sm-6 text-center col-sm-offset-3">
<<<<<<< HEAD
			<h3 align="center"><%= playerSummary.getPersonName() %></h3>
=======
			<h3 align="center">Player ID</h3>
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
		</div>
	</div>

	<div style="margin: 0px 40px 0px 40px">
		<ul class="nav nav-pills">
<<<<<<< HEAD
			<li><a href="http://localhost:8080/DotaRocks/PlayerInfoPageOfOverview.jsp">Overview</a></li>
			<li class="active"><a href="http://localhost:8080/DotAHOT/PlayerInfoPageOfArticles.jsp">Articles</a></li>
			<li><a href="http://localhost:8080/DotaRocks/PlayerInfoPageOfReplays.jsp">Replays</a></li>
=======
			<li><a href="http://localhost:8080/DotAHOT/PlayerInfoPageOfOverview.jsp">Overview</a></li>
			<li><a href="http://localhost:8080/DotAHOT/PlayerInfoPageOfMatches.jsp">Matches</a></li>
			<li><a href="http://localhost:8080/DotAHOT/PlayerInfoPageOfHeroes.jsp">Heros</a></li>
			<li><a href="http://localhost:8080/DotAHOT/PlayerInfoPageOfRecords.jsp">Records</a></li>
			<li class="active"><a href="http://localhost:8080/DotAHOT/PlayerInfoPageOfArticles.jsp">Articles</a></li>
			<li><a href="http://localhost:8080/DotAHOT/PlayerInfoPageOfReplays.jsp">Replays</a></li>
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
		</ul>
	</div>

	

	<div class="panel panel-primary" style="margin: 0px 40px 0px 40px;">
		<div class="panel-heading">
			<h3 class="panel-title">Article List</h3>
		</div>
		<table class="table-hover">
			<thead>
				<tr>
<<<<<<< HEAD
					<th width="700px">Title</th>
					<th width="300px">Date</th>
					<th width="150px">Like</th>
				</tr>
			</thead>
			<%  if(articles != null){
					for(Article article : articles){ %>
			<tbody>
				<tr>
					<td><a href="/DotaRocks/ArticleAction?articleId=<%= article.getId() %>&flag=1"><%= article.getTitle() %></a></td>
					<td><%= article.getPostedDate() %></td>
					<td><%= article.getLiked() %></td>
				</tr>
			</tbody>
			<% }
			}%>
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
					<th width="800px">Title</th>
					<th width="150px">Date</th>
					<th width="150px">Like</th>
					<th align="right"></th>
					<th align="right"></th>
				</tr>
			</thead>
			<% for(Manager article : articles){ %>
			<tbody>
				<tr>

					<td><a href="#"><%= article.getTitle() %></a></td>
					<td><%= article.getPostedDate() %></td>
					<td><%= article.getLikeNum() %></td>
					<td><button class="btn btn-warning" style="width:100px">Edit</button></td>
					<td><button onclick="deleteArticle(<%= article.getId() %>)" id="<%= article.getId() %>"class="btn btn-danger" style="width:100px">Delete</button></td>
				</tr>
			</tbody>
			<% } %>
		</table>
	</div>

>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
</body>
</html>