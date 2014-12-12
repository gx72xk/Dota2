<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
<<<<<<< HEAD
	pageEncoding="ISO-8859-1" import="dotaclass.*, dota2dao.*, java.io.*,java.util.*"%>
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
<title>Player info page of specific replay</title>
</head>
<body style="font-family:Comic Sans MS">

<%
	UserDAO userDao = new UserDAO();
	PlayerSummary playerSummary = userDao.getPlayerSummaryBySteamId(Globals.steamid);
	
	ManagerDAO replayDao = new ManagerDAO();
	int replayId = Globals.replayId;
	Replay replay = replayDao.findReplayById(replayId);
	
	List<Comment> comments = new ArrayList<Comment>();
	
	CommentDAO commentDao = new CommentDAO();
	try{
		comments = commentDao.findAllcommentsOfReplayByReplayId(replay.getId());
	}catch(NullPointerException e){
		comments = null;
	}
	
	String commentTitle = request.getParameter("commentTitle");
	String comment = request.getParameter("comment");
	String action = request.getParameter("action");
	String commentUsername = request.getParameter("commentUsername"); 

	
	if("addLike".equals(action)){
		replayDao.addLikeNum(replay.getId());
		PrintWriter printOut = response.getWriter(); 
	
		printOut.print("<script language='javascript'>"
				+ "alert('You had like this article');"
				+ "</script>");
	}else if("create".equals(action)){
		if(Globals.username != null){
			Date datePosted = new Date();
			String commentType = "replay";
			User user = userDao.findUserByUsername(Globals.username);
			Comment Comment = new Comment(commentTitle,commentType,comment,datePosted,null, replay,user);	
			commentDao.createCommentForArticle(Comment);
			PrintWriter printOut = response.getWriter(); 
			
	 		printOut.print("<script language='javascript'>"
	 				+ "alert('Comment posted success!');"
	 				+ "window.location.href='/DotaRocks/SpecificReplay.jsp';"
	 				+ "</script>");
		}else{
		PrintWriter printOut = response.getWriter(); 
			
	 		printOut.print("<script language='javascript'>"
	 				+ "alert('You have to login first before you post comments.');"
	 				+ "window.location.href='/DotaRocks/SpecificReplay.jsp';"
	 				+ "</script>");
		}
	}
%>
=======
<title>Player info page of specific replay</title>
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
					<li><a id="logout" href="http://localhost:8080/DotaRocks/registerPage.jsp">Register</a></li>
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
			<li><a href="http://localhost:8080/DotaRocks/PlayerInfoPageOfArticles.jsp">Articles</a></li>
			<li class="active"><a href="http://localhost:8080/DotaRocks/PlayerInfoPageOfReplays.jsp">Replays</a></li>
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


	<div class="panel panel-primary" style="margin: 0px 40px 0px 40px;">
<<<<<<< HEAD
		<div class="panel-heading" align="center" >
			<h3 class="panel-title" style="font-size:32px;font-weight: bold ;color:#CCCC66;font-family:Segoe Print"><%= replay.getTitle() %></h3>
=======
		<div class="panel-heading">
			<h1 class="panel-title">
				Title<small>Date</small>
			</h1>
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
		</div>

		<div class="container" align="center">
			<div class="main-shadow-box">
				<div class="main-container"
					style="margin-top: 0px; margin-bottom: 1px; padding-bottom: 1px;">
					<div class="container xuning-box" style="margin: 40px auto;">
<<<<<<< HEAD
						<div align="center">
					<iframe width="900px" height="600px" src="<%=replay.getUrl() %>" frameborder="0" allowfullscreen></iframe>
=======
						<div style="margin-left: 65px;">
							<iframe width="900px" height="522px"
								src="//www.youtube.com/embed/5V_9DjLH_24" frameborder="0"
								allowfullscreen></iframe>
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
						</div>
					</div>
				</div>
			</div>
		</div>


<<<<<<< HEAD
		<form>
			<div style="padding: 0px 40px 20px 40px">
				<button class="btn btn-danger" style="width: 100px; float: right" name="action" value="addLike">Like <%= replay.getLiked()%></button>
			</div>
		</form>
=======

		<div style="padding: 0px 40px 20px 40px">
			<button type="button" class="btn btn-danger"
				onclick="window.location.href='#'"
				style="width: 100px; float: right">Like</button>
		</div>
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
	</div>



	<div class="panel panel-primary" style="margin: 20px 40px 0px 40px">
<<<<<<< HEAD
	
		<div class="panel-heading">Comment</div>
		<div class="panel panel-info">
		<% 	if(comments != null){
				for(Comment commentList : comments){ %>
			<div class="panel-heading"><%= commentList.getTitle() %></div>
			<div class="panel-body">
				<p><%= commentList.getContent() %></p>
			</div>
			<ul class="list-group">
				<li class="list-group-item">			
					<p class="text-right"><%= commentList.getUser().getUsername() %><br><%= commentList.getDate()%></p>
				</li>
			</ul>
		<% }
		}%>
		</div>
	
	</div>
	
	<div class="panel panel-primary" style="margin: 20px 40px 20px 40px">
		<div class="panel-heading">My Comment</div>
		<form>
		<div class="panel panel-info">
			<div class="panel-heading">
				<div>
					<input name="commentTitle" type="text" class="form-control" placeholder="Comment Title"></input>
				</div>
			</div>
			<div class="panel-body">
				<div class="form-group">
					<textarea name="comment" class="form-control" placeholder="Comment" rows="5"></textarea>
				</div>
				<div align="right">
					<button name="action" value="create" class="btn btn-primary" style="width:100px">Submit</button>
				</div>
			</div>
		</div>
		</form>
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
			<div class="panel-heading">Comment</div>
			<div class="panel panel-default">
				<div class="panel-heading">CommentTitle</div>
				<div class="panel-body">
					<p>CommentContent</p>
				</div>
				<ul class="list-group">
					<li class="list-group-item"><p class="text-right">Commenter
							ID Date</p></li>
				</ul>
			</div>
		</div>

		<div class="panel panel-primary" style="margin: 20px 40px 20px 40px">
			<div class="panel-heading">My Comment</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<form role="form">
						<div class="form-group">
							<input type="text" class="form-control"
								placeholder="Comment Title">
						</div>
					</form>
				</div>
				<div class="panel-body">
					<form role="form">
						<div class="form-group">
							<textarea class="form-control" placeholder="Comment Title"
								rows="5"></textarea>
						</div>
					</form>
					<div align="right">
						<button type="button" class="btn btn-primary" style="width: 100px">Submit</button>
					</div>
				</div>
			</div>
		</div>
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
</body>
</html>