<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
<<<<<<< HEAD
	pageEncoding="ISO-8859-1" import="dotaclass.*,dota2dao.*"%>


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
<script type="text/javascript" src="js/jquery.js"></script>
<title>Player info page of replay editor</title>
</head>
<<<<<<< HEAD
<body style="font-family:Comic Sans MS">
=======
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
			<li class="active"><a href="/DotaRocks/ProfileAction">My Profile</a></li>
			<li><a href="http://localhost:8080/DotaRocks/searchPlayerById.jsp">Players</a></li>
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
				src=" <%=Globals.playersummary.avatarFull%>"alt="">
=======
				src="http://placehold.it/200x200" alt="">
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
		</div>
	</div>
	<div class="row">
		<div class="col-sm-6 text-center col-sm-offset-3">
<<<<<<< HEAD
			<h3 align="center"><%=Globals.playersummary.personName %></h3>
=======
			<h3 align="center">Player ID</h3>
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
		</div>
	</div>

	<div style="margin: 0px 40px 0px 40px">
		<ul class="nav nav-pills">
<<<<<<< HEAD
			<li><a href="http://localhost:8080/DotaRocks/PlayerInfoPageOfOverview.jsp">Overview</a></li>
			<li><a href="http://localhost:8080/DotaRocks/MyArticles.jsp">Articles</a></li>
			<li class="active"><a href="http://localhost:8080/DotaRocks/MyReplays.jsp">Replays</a></li>
			<li><a href="http://localhost:8080/DotaRocks/MyFriends.jsp">Friends</a></li>
=======
			<li><a href="http://localhost:8080/DotAHOT/PlayerInfoPageOfOverview.jsp">Overview</a></li>
			<li><a href="http://localhost:8080/DotAHOT/PlayerInfoPageOfMatches.jsp">Matches</a></li>
			<li><a href="http://localhost:8080/DotAHOT/PlayerInfoPageOfHeroes.jsp">Heros</a></li>
			<li><a href="http://localhost:8080/DotAHOT/PlayerInfoPageOfRecords.jsp">Records</a></li>
			<li><a href="http://localhost:8080/DotAHOT/PlayerInfoPageOfArticles.jsp">Articles</a></li>
			<li class="active"><a href="http://localhost:8080/DotAHOT/PlayerInfoPageOfReplays.jsp">Replays</a></li>
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
		</ul>
	</div>

	<div class="panel panel-primary" style="margin: 0px 40px 0px 40px">
		<div class="panel-heading">
			<h3 class="panel-title">Replay List</h3>
		</div>
		<div class="panel-body">
			<form role="form">
				<div class="form-group">
					<label class="control-label">Title</label>
					<div>
						<input type="text" class="form-control" id="title" 
							placeholder="Title">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label">URL</label>
					<div>
						<input type="text" class="form-control" id="url"
							placeholder="URL">
					</div>
				</div>
			</form>
			<button type="button" id="create"class="btn btn-success btn-block">Save</button>
			<button type="button" class ="btn btn-danger btn-block">Cancel</button>
		</div>
	</div>
	<script>
	$(function(){
		$("#create").click(createHandler);

		
	});
	
	function createHandler(){
<<<<<<< HEAD
 		var username = "<%=Globals.username%>";
=======
 		var username = "kai";
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
		var date = new Date();
		var replay = {
				"title": $("#title").val(),
				"url": $("#url").val(),
 				"postedDate":date.getTime(),
<<<<<<< HEAD
 				"liked": 0,
 				"username":username,
=======
 				"likeNumber": 0,
 				"username": username
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
		};

		createReplay(replay);

		
	}
	
	function createReplay(replay){
		$.ajax({
<<<<<<< HEAD
			url: "http://localhost:8080/DotaRocks/rest/user/replay/create",
=======
			url: "http://localhost:8080/DotAHOT/rest/user/replay/create",
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
			type: "post",
			data: JSON.stringify(replay),
			dataType:"json",
			contentType:"application/json",
			success: function go(){
<<<<<<< HEAD
						window.location.href="http://localhost:8080/DotaRocks/MyReplays.jsp";
=======
						window.location.href="http://localhost:8080/DotAHOT/PlayerInfoPageOfReplays.jsp";
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
			
					
			}
		});
		
	}
</script>
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