<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<div class="side-menu">
		<nav class="navbar navbar-default" role="navigation">
			<!-- Main Menu -->
			<div class="side-menu-container">
			<%
			HttpSession httpSession = request.getSession();
		    // By setting the variable in session, it can be forwarded
		    if(httpSession.getAttribute("Role").equals("Administrator")){
			%>
				<ul class="nav navbar-nav">
					<li class="active"><a href="admin_interface.jsp"><span class="glyphicon glyphicon-dashboard"></span> Dashboard</a></li>
					<li><a href=""><span class="glyphicon glyphicon-plane"></span> Active Link</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-cloud"></span> Link</a></li>

					
					<!-- Dropdown-->
					<li class="panel panel-default" id="dropdown">
						<a data-toggle="collapse" href="#dropdown-lvl2">
							<span class="glyphicon glyphicon-user"></span> Product management <span class="caret"></span>
						</a>

						<!-- Dropdown level 1 -->
						<div id="dropdown-lvl2" class="panel-collapse collapse">
							<div class="panel-body">
								<ul class="nav navbar-nav">
									<li><a href="All_product.jsp">All product </a></li>
									<li><a href="Product_image.jsp">Product image</a></li>

								</ul>
							</div>
						</div>
					</li>
					
					<!-- Dropdown-->
					<li class="panel panel-default" id="dropdown">
						<a data-toggle="collapse" href="#dropdown-lvl3">
							<span class="glyphicon glyphicon-user"></span> Category <span class="caret"></span>
						</a>

						<!-- Dropdown level 1 -->
						<div id="dropdown-lvl3" class="panel-collapse collapse">
							<div class="panel-body">
								<ul class="nav navbar-nav">
									<li><a href="category.jsp">category </a></li>
									<li><a href="sub_category.jsp">sub category</a></li>

								</ul>
							</div>
						</div>
					</li>

					<li><a href="#"><span class="glyphicon glyphicon-signal"></span> Link</a></li>
					<!-- Dropdown-->
					<li class="panel panel-default" id="dropdown">
						<a data-toggle="collapse" href="#dropdown-lvl4">
							<span class="glyphicon glyphicon-user"></span> Bid <span class="caret"></span>
						</a>

						<!-- Dropdown level 1 -->
						<div id="dropdown-lvl4" class="panel-collapse collapse">
							<div class="panel-body">
								<ul class="nav navbar-nav">
									<li><a href="Bid.jsp">All bid </a></li>
									<li><a href="Bid.jsp">Accepted bid</a></li>

								</ul>
							</div>
						</div>
					</li>

					
					
					
					
					<li><a href="User_management.jsp"><span class="glyphicon glyphicon-user"></span>User Management</a></li>
					

				</ul>
				<%
		    }else{
		    	
		    
				%>
					<ul class="nav navbar-nav">
					<li class="active"><a href="admin_interface.jsp"><span class="glyphicon glyphicon-dashboard"></span> Dashboard</a></li>
					
					
					<!-- Dropdown-->
					<li class="panel panel-default" id="dropdown">
						<a data-toggle="collapse" href="#dropdown-lvl2">
							<span class="glyphicon glyphicon-user"></span> Product management <span class="caret"></span>
						</a>

						<!-- Dropdown level 1 -->
						<div id="dropdown-lvl2" class="panel-collapse collapse">
							<div class="panel-body">
								<ul class="nav navbar-nav">
									<li><a href="All_product.jsp">My product </a></li>
									<li><a href="Product_image.jsp">Product image</a></li>

								</ul>
							</div>
						</div>
					</li>
															
					<li><a href="Bid_Timer.jsp"><span class="glyphicon glyphicon-signal"></span> Bid Timer</a></li>
					
					<li><a href="User_management.jsp"><span class="glyphicon glyphicon-user"></span>My bids</a></li>
					

				</ul>
				<%
				
				}%>
			</div><!-- /.navbar-collapse -->
		</nav>

	</div>
</div>  		</div>