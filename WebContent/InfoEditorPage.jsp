<%@page import="java.sql.Date"%>
<%@page import="dota2dao.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" 
	import="dotaclass.*, java.util.*, java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Register Page</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/round-about.css" rel="stylesheet">
<script src="js/jquery.js"></script>


</head >

<body style="font-family:Comic Sans MS">

<%
UserDAO userDao = new UserDAO();  
	User user=userDao.findUserByUsername(Globals.username); 

	
 	String action = request.getParameter("action"); 
 	String username = request.getParameter("username"); 
 	String password = request.getParameter("password"); 
	String firstName = request.getParameter("firstName"); 
 	String lastName = request.getParameter("lastName"); 
	String email = request.getParameter("email"); 
 	String dateOfBirthStr = request.getParameter("dateOfBirth"); 
  	String dota2Account = request.getParameter("steamid");
	
 	if("update".equals(action)){ 
	java.sql.Date sqlDateOfBirthForUser = null; 
 		SimpleDateFormat bartDateFormatForUser = new SimpleDateFormat("yyyy-MM-dd"); 
 		java.sql.Date sqlDateForUser = null; 

		try {
 			java.util.Date date = bartDateFormatForUser.parse(dateOfBirthStr); 

 			sqlDateOfBirthForUser = new java.sql.Date(date.getTime());

 		} 
  		catch (Exception ex) {
  		System.out.println(ex.getMessage()); 
 		} 
		
 		user = new User(username, dateOfBirthStr, dota2Account, email, firstName, lastName, password,null,null); 
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
					<li><a id="login" href="http://localhost:8080/DotaRocks/LoginPage.jsp">Log in</a></li>
					<li><a>|</a></li>
					<li><a id="logout" href="http://localhost:8080/DotaRocks/Register.jsp">Register</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

	<!-- Page Content -->
	<div class="container col-lg-6 col-lg-offset-3">
		<div>
			<h1 class="page-header">Please fill your information</h1>
		</div>
		<form class="form-horizontal" role="form" method="post">
			<div class="form-group">
				<label for="username" class="col-lg-2 control-label">UserName</label>
				<div class="col-lg-10" style="padding-top: 7px"><%= Globals.username %></div>
			</div>
			<div class="form-group">
				<label for="password" class="col-lg-2 control-label">Password</label>
				<div class="col-lg-10">
			    	<input id="password" name="password" type="password" id="inputPassword" class="form-control" value="<%= user.getPassword() %>">
			    </div>
			</div>
			<div class="form-group">
				<label for="firstName" class="col-lg-2 control-label">First Name</label>
				<div class="col-lg-10">
			    	<input id="firstName" name="firstName" class="form-control" value="<%= user.getFirstname() %>">
			    </div>
			</div>
			<div class="form-group">
			    <label for="lastName" class="col-lg-2 control-label">Last Name</label>
			    <div class="col-lg-10">
			    	<input id="lastName" name="lastName" class="form-control" value="<%= user.getLastname() %>">
			    </div>
			</div>
			<div class="form-group">
			    <label for="email" class="col-lg-2 control-label">E-mail</label>
			    <div class="col-lg-10">
			    	<input id="email" name="email" type="email" class="form-control" value="<%= user.getEmail() %>">
			    </div>
			</div>
			<div class="form-group">
			    <label for="dateOfBirth" class="col-lg-2 control-label">Date Of Birth</label>
			    <div class="col-lg-10">
			    	<input id="dateOfBirth" name="dateOfBirth" type="date" class="form-control" value="<%=user.getDate_of_Birth()%>">
			    </div>
			</div>
			<div class="form-group">
			    <label for="steamid" class="col-lg-2 control-label">Your SteamID</label>
			    <div class="col-lg-10">
			    	<input id="steamid" name="steamid" class="form-control" value="<%= user.getSteamid() %>" required>
			    </div>
			</div>
				<button class="btn btn-lg btn-success btn-block"id="update"type="button" >Save</button>
				<button class="btn btn-lg btn-danger btn-block" onclick="window.location.href='http://localhost:8080/DotaRocks/LoginPage.jsp'">Cancel</button>
		</form>
	</div>
	<script>
	$(function(){
		$("#update").click(updateHandler);

		
	});
	
	function updateHandler(){
		var username="<%=Globals.username%>";
		var user = {
				"username":username,
				"password": $("#password").val(),
				"firstname": $("#firstName").val(),
				"lastname": $("#lastName").val(),
				"email": $("#email").val(),
				"date_of_Birth": $("#dateOfBirth").val(),
				"steamid": $("#steamid").val(),

		};

		updateUser(username,user);

		
	}
	
	function updateUser(username,user){
		$.ajax({
			url: "http://localhost:8080/DotaRocks/rest/user/update/"+username,
			type: "put",
			async:false,
			data: JSON.stringify(user),
			dataType:"json",
			contentType:"application/json",
					success: function go(){
				        alert("Your information have been updated,please login again!");
						window.location.href="http://localhost:8080/DotaRocks/LoginPage.jsp";
			
					
			}
		});
		
	}
</script>
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
