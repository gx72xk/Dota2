<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="dotaclass.*, dota2dao.*, java.util.*, java.io.*"%>

<!DOCTYPE html >
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<meta http-equiv="x-frame-options" content="ALLOW-FROM" />



<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/round-about.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery.js"></script>
<title>Specific Replay</title>
</head>
<body style="font-family:Comic Sans MS">

<%	

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
		replayDao.replayaddLikeNum(Globals.replayId);
		PrintWriter printOut = response.getWriter(); 
	
		printOut.print("<script language='javascript'>"
				+ "alert('You had like this article');"
				+ "</script>");
	}else if("create".equals(action)){
		if(Globals.username != null){
			Date datePosted = new Date();
			String commentType = "replay";
			UserDAO userDao = new UserDAO();
			User user = userDao.findUserByUsername(Globals.username);
			Comment Comment = new Comment(commentTitle, commentType,comment,datePosted,null, replay,user);	
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
			<li><a href="/DotaRocks/ProfileAction">My Profile</a></li>
			<li><a href="http://localhost:8080/DotaRocks/searchPlayerById.jsp">Players</a></li>
			<li><a href="http://localhost:8080/DotaRocks/searchMatchById.jsp">Matches</a></li>
			<li><a href="http://localhost:8080/DotaRocks/articleList.jsp">Articles</a></li>
			<li class="active"><a href="http://localhost:8080/DotaRocks/replayList.jsp">Replays</a></li>
		</ul>
	</div>


	<div class="panel panel-primary" style="margin: 0px 40px 0px 40px;">
		<div class="panel-heading"align="center" >
			<h1 class="panel-title"style="font-size:32px;font-weight: bold ;color:#CCCC66;font-family:Segoe Print"><%= replay.getTitle() %></h1>
		</div>

		<div class="container" align="center">
			<div class="main-shadow-box">
					<div class="container xuning-box" style="margin: 40px auto;">
						<div align="center">
							<iframe width="900" height="600" src="<%=replay.getUrl() %>" frameborder="0" allowfullscreen></iframe>
						</div>
					</div>

			</div>
		</div>


		<form>
			<div style="padding: 0px 40px 20px 40px">
				<button class="btn btn-danger" style="width: 100px; float: right" name="action" value="addLike">Like <%= replay.getLiked() %></button>
			</div>
		</form>
	</div>



	<div class="panel panel-primary" style="margin: 20px 40px 0px 40px">
	
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

</body>
</html>