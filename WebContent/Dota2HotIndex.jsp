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

    <title>Dota Hot Index</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/round-about.css" rel="stylesheet">


</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="http://localhost:8080/DotAHOT/dotaHotIndex.jsp">DOTA HOT</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#">About</a>
                    </li>
                    <li>
                        <a href="#">Services</a>
                    </li>
                    <li>
                        <a href="#">Contact</a>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                	<li>
                		<a href="http://localhost:8080/DotAHOT/LoginPage.jsp">Log in</a>
                	</li>
                	<li>
                		<a>|</a>
                	</li>
                	<li>
                		<a href="">Register</a>
                	</li>
                
                </ul>
                
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">

        <!-- Introduction Row -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">DOTA HOT
                    <small>Welcome!</small>
                </h1>
                <p></p>
            </div>
        </div>

        <!-- Team Members Row -->
        <div class="row" style="padding: 0px 0px 20px 0px">
 
            <div class="col-sm-4 text-center">
                <img class="img-thumbnail img-responsive img-center" src="Image/Index/MyStatImage.jpg" alt="" width="533" height="300">
                <a href="" class="btn btn-primary" style="width: 360px"><strong>My stats</strong></a>
            </div>
            <div class="col-sm-4 text-center">
                <img class="img-thumbnail img-responsive img-center" src="Image/Index/PlayersImage.jpg" alt="" width="533" height="300">
                <a href="" class="btn btn-primary" style="width: 360px"><strong>Players</strong></a>
            </div>
            <div class="col-sm-4 text-center">
                <img class="img-thumbnail img-responsive img-center" src="Image/Index/MatchesImage.jpg" alt="" width="533" height="300">
                <a href="http://localhost:8080/DotAHOT/searchMatchById.jsp" class="btn btn-primary" style="width: 360px"><strong>Matches</strong></a>
            </div>
        </div>
        
        <div class="row" style="padding: 0px 0px 20px 0px">
            <div class="col-sm-4 text-center">
                <img class="img-thumbnail img-responsive img-center" src="Image/Index/HerosImage.jpg" alt="" width="533" height="300">
                <a href="http://localhost:8080/DotAHOT/heroList.jsp" class="btn btn-primary" style="width: 360px"><strong>Heros</strong></a>
            </div>
            <div class="col-sm-4 text-center">
                <img class="img-thumbnail img-responsive img-center" src="Image/Index/ItemsImage.jpg" alt="" width="533" height="300">
                <a href="" class="btn btn-primary" style="width: 360px"><strong>Items</strong></a>
            </div>
            <div class="col-sm-4 text-center">
                <img class="img-thumbnail img-responsive img-center" src="Image/Index/RankBoardImage.jpg" alt="" width="533" height="300">
                <a href="http://localhost:8080/DotAHOT/rankBoard.jsp" class="btn btn-primary" style="width: 360px"><strong>RankBorad</strong></a>
            </div>
        </div>
        <div class="row" style="padding: 0px 0px 20px 0px">
            <div class="col-sm-4 text-center">
                <img class="img-thumbnail img-responsive img-center" src="Image/Index/ArticlesImage.jpg" alt="" width="533" height="300">
                <a href="http://localhost:8080/DotAHOT/articleList.jsp" class="btn btn-primary" style="width: 360px"><strong>Articles</strong></a>
            </div>
            <div class="col-sm-4 text-center">
                <img class="img-thumbnail img-responsive img-center" src="Image/Index/ReplaysImage.jpg" alt="" width="533" height="300">
                <a href="http://localhost:8080/DotAHOT/replayList.jsp" class="btn btn-primary" style="width: 360px"><strong>Replays</strong></a>
            </div>
            <div class="col-sm-4 text-center">
                <img class="img-thumbnail img-responsive img-center" src="Image/Index/MatchCalendarImage.jpg" alt="" width="533" height="300">
                <a href="" class="btn btn-primary" style="width: 360px"><strong>Match Calendar</strong></a>
            </div>
        </div>

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Your Website 2014</p>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery Version 1.11.0 -->
    <script src="js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
