<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
<<<<<<< HEAD
	pageEncoding="ISO-8859-1" import="dota2dao.*,dotaclass.*"%>
=======
	pageEncoding="ISO-8859-1" import="edu.neu.cs5200.dotahot.matchHistory.*"%>
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Search match by id</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/round-about.css" rel="stylesheet">

</head>
<<<<<<< HEAD
<body style="font-family:Comic Sans MS">
=======
<body>
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7

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
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
		</ul>
	</div>
	
	<div style="padding: 0px 40px 20px 40px; margin-top: 150px" class="col-lg-offset-3 col-lg-6" align="center">
		<h1>DotA HoT</h1>
	</div>

	<div style="margin-top: 150px; padding: 100px 100px 20px 100px">
<<<<<<< HEAD
			<form class="bs-example bs-example-form" role="form" action="/DotaRocks/searchMatchById" method="post" >
=======
			<form class="bs-example bs-example-form" role="form" action="/DotAHOT/searchMatchById" method="post" >
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
				<div class="row">
					<div class="col-lg-8 col-lg-offset-2">
						<div class="input-group">
							<input name="matchid" class="form-control" placeholder="Please enter match ID"> 
							<span class="input-group-btn">
								<button class="btn btn-primary" type="button" style="width:100px">GO!</button>
							</span>
						</div>
					</div>
				</div>
			</form>
		</div>

<<<<<<< HEAD
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

>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7

</body>
</html>