<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%@include file="navbar.jsp" %>  
	<div class="container-fluid main-container">
  		<div class="col-md-2 sidebar">
  			<div class="row">
	<!-- uncomment code for absolute positioning tweek see top comment in css -->
	<div class="absolute-wrapper"> </div>
	<%@include file="sidebar.jsp" %>
	
	
		<!-- Home Content Start hERE -->
	
  		<div class="col-md-10 content">
  			  <div class="panel panel-default">
	<div class="panel-heading">
		Dashboard
	</div>
	<div class="panel-body">
	<%
	
	
	%>
		Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
		cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
		proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
	</div>
</div>
 <%@include file="footer.jsp"%>

  		</div>
  			<!-- Home Content eNDS hERE -->
  		
  		
 
     <script>
        var dt=new Date();
        var dtime=new Date();
        document.getElementById("datetime").innerHTML=dt.toLocaleDateString();
        document.getElementById("dtime").innerHTML=dt.toLocaleTimeString();

        var time=today.getHours()+" : "+ today.getMinutes()+" : "+today.getSeconds();
        document.getElementById("currentTime").value=time;

    </script>