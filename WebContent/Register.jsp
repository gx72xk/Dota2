<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="dotaclass.*, java.util.*"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Register Page</title>
<script src="js/jquery.js"></script>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/round-about.css" rel="stylesheet">


</head>

<body style="font-family:Comic Sans MS">


	


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
					<li><a href="http://localhost:8080/DotaRocks/LoginPage.jsp">Log
							in</a></li>
					<li><a>|</a></li>
					<li><a href="">Register</a></li>
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
		<form class="form-horizontal" role="form" method="post" >
			<div class="form-group">
				<label for="inputUsername" class="col-lg-2 control-label">UserName</label>
				<div class="col-lg-10">
					<input name="username" class="form-control" id="username" placeholder="UserName" required autofocus>
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword" class="col-lg-2 control-label">Password</label>
				<div class="col-lg-10">
			    	<input name="password" type="password" id="password" class="form-control" placeholder="Password" required>
			    </div>
			</div>
			<div class="form-group">
				<label for="inputFirstName" class="col-lg-2 control-label">First Name</label>
				<div class="col-lg-10">
			    	<input name="firstName" id="firstName" class="form-control" placeholder="First Name">
			    </div>
			</div>
			<div class="form-group">
			    <label for="inputLastName" class="col-lg-2 control-label">Last Name</label>
			    <div class="col-lg-10">
			    	<input name="lastName" id="lastName" class="form-control" placeholder="Last Name">
			    </div>
			</div>
			<div class="form-group">
			    <label for="inputEmail" class="col-lg-2 control-label">E-mail</label>
			    <div class="col-lg-10">
			    	<input name="email" type="email" id="email" class="form-control" placeholder="E-mail">
			    </div>
			</div>
			<div class="form-group">
			    <label for="inputDateOfBirth" class="col-lg-2 control-label">Date Of Birth</label>
			    <div class="col-lg-10">
			    	<input name="dateOfBirth" type="date" id="dateOfBirth" class="form-control" placeholder="Date of Birth">
			    </div>
			</div>
			<div class="form-group">
			    <label for="inputSteamID" class="col-lg-2 control-label">Your SteamID</label>
			    <div class="col-lg-10">
			    	<input name="steamid" id="steamid" class="form-control" placeholder="SteamID" required>
			    </div>
			</div>
				<button class="btn btn-lg btn-success btn-block"  id="create" type="button" >Register</button>
				<button onclick="window.location.href='http://localhost:8080/DotaRocks/dotaHotIndex.jsp'" class="btn btn-lg btn-danger btn-block">Cancel</button>
		</form>
	</div>
	<script>
	$(function(){
		$("#create").click(createHandler);

		
	});
	
	function createHandler(){
		var user = {
				"username": $("#username").val(),
				"password": $("#password").val(),
 				"firstname":$("#firstName").val(),
 				"lastname": $("#lastName").val(),
 				"date_of_Birth": $("#dateOfBirth").val(),
 				"steamid": $("#steamid").val(),
 	
		};

		createUser(user);

		
	}
	
	function createUser(user){
		$.ajax({
			url: "http://localhost:8080/DotaRocks/rest/user",
			type: "post",
			 async:false,
			data: JSON.stringify(user),
			dataType:"json",
			contentType:"application/json",
			success: function go(){
				alert("Welcome to DotAHOT!");
				window.location.href="http://localhost:8080/DotaRocks/LoginPage.jsp";
	
			
	}
		});
		
	}

</script>


</body>
</html>
