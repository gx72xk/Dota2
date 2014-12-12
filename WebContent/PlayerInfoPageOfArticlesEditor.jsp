<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

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
<title>Player info page of articles editor</title>
</head>
<body>


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
					href="http://localhost:8080/DotAHOT/dotaHotIndex.jsp">DOTA HOT</a>
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
					<li><a href="http://localhost:8080/DotAHOT/LoginPage.jsp">Log
							in</a></li>
					<li><a>|</a></li>
					<li><a href="">Register</a></li>

				</ul>

			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

	<div style="padding: 0px 40px 20px 40px">
		<ul class="nav nav-tabs">
			<li><a href="#">My Stats</a></li>
			<li class="active"><a
				href="http://localhost:8080/DotAHOT/searchPlayerById.jsp">Players</a></li>
			<li><a href="http://localhost:8080/DotAHOT/searchMatchById.jsp">Matches</a></li>
			<li><a href="http://localhost:8080/DotAHOT/heroList.jsp">Heroes</a></li>
			<li><a href="#">Items</a></li>
			<li><a href="http://localhost:8080/DotAHOT/rankBoard.jsp">Rank Board</a></li>
			<li><a href="http://localhost:8080/DotAHOT/articleList.jsp">Articles</a></li>
			<li><a href="http://localhost:8080/DotAHOT/replayList.jsp">Replays</a></li>
			<li><a href="#">Match Calendar</a></li>
		</ul>
	</div>


	<div class="row">
		<div class="col-sm-2 text-center col-sm-offset-5">
			<img class="img-circle img-responsive img-center"
				src="http://placehold.it/200x200" alt="">
		</div>
	</div>
	<div class="row">
		<div class="col-sm-6 text-center col-sm-offset-3">
			<h3 align="center">Player ID</h3>
		</div>
	</div>

	<div style="margin: 0px 40px 0px 40px">
		<ul class="nav nav-pills">
			<li><a href="http://localhost:8080/DotAHOT/PlayerInfoPageOfOverview.jsp">Overview</a></li>
			<li><a href="http://localhost:8080/DotAHOT/PlayerInfoPageOfMatches.jsp">Matches</a></li>
			<li><a href="http://localhost:8080/DotAHOT/PlayerInfoPageOfHeroes.jsp">Heros</a></li>
			<li><a href="http://localhost:8080/DotAHOT/PlayerInfoPageOfRecords.jsp">Records</a></li>
			<li class="active"><a href="http://localhost:8080/DotAHOT/PlayerInfoPageOfArticles.jsp">Articles</a></li>
			<li><a href="http://localhost:8080/DotAHOT/PlayerInfoPageOfReplays.jsp">Replays</a></li>
		</ul>
	</div>

	<div style="padding: 0px 40px 0px 40px">
		<form role="form">
			<div class="form-group">
				<label for="name">Title</label> 
				<input type="text" class="form-control" placeholder="Title">
			</div>
		</form>
		<form role="form">
			<div class="form-group">
				<label for="name">Content</label>
				<textarea class="form-control" rows="20"></textarea>
			</div>
		</form>
	</div>

	<div style="padding: 0px 40px 20px 40px">

				<button type="button" class="btn btn-danger"
					onclick="window.location.href='http://localhost:8080/DotAHOT/PlayerInfoPageOfArticles.jsp'"
					style="width: 100px">Back</button>

				<button type="button" class="btn btn-success"
					onclick="window.location.href='#'"
					style="width: 100px; float: right">Save</button>

	</div>



</body>
</html>