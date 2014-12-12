<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Login Page</title>
<<<<<<< HEAD

<script src="js/jquery.js"></script>
=======
<script src="js/jquery.js"></script>

>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/round-about.css" rel="stylesheet">


</head>

<<<<<<< HEAD
<body style="font-family:Comic Sans MS">
=======
<body >
<script type="text/javascript">
$(function() {
	
$("#login").click(loginHandler);
});
function loginHandler(){
	var user = {
	 	"username":$("#username").val(),
	 	"password":$("#password").val(),
		 	
			
	};
	findUser($("username").val(),$("password").val());
	//window.location.herf="http://www.baidu.com"
	//if(username!=null){
		window.open=("http://www.baidu.com");
 	//else {alert("No such user");}
}

function findUser(user){
	$.ajax({
		url:"http://localhost:8080/DotAHOT/rest/user/login",
		type:"get",
		data: JSON.stringify(user),
		datatype:"json",
		contentType:"application/json",
	sucess:function(response){
		
		}
		
	});
	
	
	
	
}


</script>
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7

	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
<<<<<<< HEAD
			<div class="navbar-header">
=======
			<div class="navbar-header" >
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
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
					<li><a href="http://localhost:8080/DotaRocks/LoginPage.jsp">Login</a></li>
					<li><a>|</a></li>
					<li><a href="http://localhost:8080/DotaRocks/Register.jsp">Register</a></li>
=======
					<li><a href="http://localhost:8080/DotAHOT/LoginPage.jsp">Log
							in</a></li>
					<li><a>|</a></li>
					<li><a href="http://localhost:8080/DotAHOT/registerPage.jsp">Register</a></li>
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

	<!-- Page Content -->
<<<<<<< HEAD
	<div class="container col-lg-4 col-lg-offset-4" Style="margin-top: 60px">
		<div>
			<h1 class="page-header">Please login</h1>
		</div>
		<form action="/DotaRocks/LoginPage">
			<label class="sr-only">UserName</label> 
			<input name="username" id="inputEmail" class="form-control" placeholder="Username" required autofocus>
			<label for="inputPassword" class="sr-only">Password</label>
			   <input name="password" type="password" id="inputPassword" class="form-control" placeholder="Password" required>
			<div style="padding-top: 30px">
				<button class="btn btn-lg btn-primary btn-block">Login</button>
			</div>
		
		</form>
	</div>

=======
	<div class="container col-lg-4 col-lg-offset-4">
		<div>
			<h1 class="page-header">Please log in</h1>
		</div>
		<form >
			<label class="sr-only">Username</label> 
			<input name="username" id="username" class="form-control" placeholder="Username" required autofocus> 
			<label for="inputPassword" class="sr-only">Password</label>
		    <input name="password" type="password" id="password" class="form-control" placeholder="Password" required>
		<div class="checkbox">
			<label> <input type="checkbox" value="remember-me">Remember me</label>
		</div>
		<button class="btn btn-lg btn-primary btn-block" id="login" >login</button>
		</form>
	</div>
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
</body>
</html>
