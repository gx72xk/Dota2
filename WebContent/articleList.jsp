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
	ManagerDAO articleDao = new ManagerDAO();
	List<Article> articles = articleDao.findAllArticles();
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
<<<<<<< HEAD
					<ul class="nav navbar-nav navbar-right">
					<li><a id="login" href="http://localhost:8080/DotaRocks/LoginPage.jsp">Log in</a></li>
					<li><a>|</a></li>
					<li><a id="logout" href="http://localhost:8080/DotaRocks/Register.jsp">Register</a></li>
=======
				<ul class="nav navbar-nav navbar-right">
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
			<li><a href="http://localhost:8080/DotaRocks/searchMatchById.jsp">Matches</a></li>
			<li class="active"><a href="http://localhost:8080/DotaRocks/articleList.jsp">Articles</a></li>
			<li><a href="http://localhost:8080/DotaRocks/replayList.jsp">Replays</a></li>
=======
			<li><a href="#">My Stats</a></li>
			<li><a href="http://localhost:8080/DotAHOT/searchPlayerById.jsp">Players</a></li>
			<li><a href="http://localhost:8080/DotAHOT/searchMatchById.jsp">Matches</a></li>
			<li><a href="http://localhost:8080/DotAHOT/heroList.jsp">Heroes</a></li>
			<li><a href="#">Items</a></li>
			<li><a href="http://localhost:8080/DotAHOT/rankBoard.jsp">Rank Board</a></li>
			<li class="active"><a href="http://localhost:8080/DotAHOT/articleList.jsp">Articles</a></li>
			<li><a href="http://localhost:8080/DotAHOT/replayList.jsp">Replays</a></li>
			<li><a href="#">Match Calendar</a></li>
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
		</ul>
	</div>

	<div class="col-lg-8 col-lg-offset-2">
		<table class="table table-striped">
			<thead>
				<tr>
<<<<<<< HEAD
					<th class="col-lg-3">Title</th>
					<th class="col-lg-1">Author</th>
					<th class="col-lg-3">Posted Date</th>
=======
					<th class="col-lg-5">Title</th>
					<th class="col-lg-1">Author</th>
					<th class="col-lg-1">Posted Date</th>
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
					<th class="col-lg-1">like</th>
				</tr>
			</thead>
			<tbody>
<<<<<<< HEAD
			<%
				for(Article article : articles){
			%>
				<tr>
					<td><a href="http://localhost:8080/DotaRocks/ArticleAction?articleId=<%= article.getId() %>&flag=0"><%= article.getTitle() %></a></td>
					<td><%= article.getUsername() %></td>
					<td><%= article.getPostedDate() %></td>
					<td><%= article.getLiked() %></td>
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
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				
			</tbody>
		</table>
	</div>

>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
</body>
</html>