<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*"%>
    
<!DOCTYPE html>
<html>
<head>


<link rel="stylesheet" href="bootstrapv3/bootstrap.min.css">
<link rel="stylesheet" href="css/admin_interface.css">
<link rel="stylesheet" href="fontawesome/css/all.css">



<!--<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">-->
<!--<link href="css/admin_interface.css" rel="stylesheet">-->
<!--<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>-->
<script src="js/jquery.js"></script>
<script src="bootstrapv3/bootstrap.min.js"></script>
<script src="js/toggle.js"></script>

<!------ Include the above in your HEAD tag ---------->
<nav class="navbar navbar-default navbar-static-top" style="background-color:peru;">
    <div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle navbar-toggle-sidebar collapsed">
			MENU
			</button>
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			  
			<!--  <h2 id=""  style="float:left;" class="title">ONLINE AUCTION</h2> -->
			<a class="navbar-brand" href="#" style="margin-top:-20px;" >
			<div class="row">
				<img  class="logo" src="pic/im18.jpg" style="border-radius:300%;height:65px" alt="no image found">
				<small style="color:black;"><b>ONLINE AUCTIONING</b></small>
			</div>
			  
		
			</a>
			
			<!-- <p id="datetime" class="time"></p> -->

		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">      
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown ">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
					<img alt="" src="pic/im19.jpg"style=width:30px;">
						<span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li class="dropdown-header">SETTINGS</li>
							<li class=""><a href="#">
			<%
			HttpSession httpSessions = request.getSession();
		    // By setting the variable in session, it can be forwarded
		   out.print(httpSessions.getAttribute("Role"));
			%>
							</a></li>	
							<li class=""><a href="#">Profile</a></li>
							<li class="divider"></li>
							<li><a href="#">Logout</a></li>
						</ul>
					</li>
				</ul>
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</nav>