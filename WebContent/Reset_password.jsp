<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Connection.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@ include file="navbar.jsp"%>

<div class="container-fluid main-container">
  		<div class="col-md-2 sidebar">
  			<div class="row">
	<!-- uncomment code for absolute positioning tweek see top comment in css -->
	<div class="absolute-wrapper"> </div>
	<%@include file="sidebar.jsp" %>
	
	
		<!-- Home Content Start hERE -->
<div class="col-md-10 content">
  			  <div class="panel panel-default">
	<div class="panel-heading" style="background-color:lightskyblue;">
		Password
	</div>
<div class="panel-body">

<div class="row">
  <div class="col-md-5 content">
  <img alt="" src="pic/im44.jpg" style="width:290px;"> 
 </div>
 
<div class="col-md-7 content">
<div class="row">
<h1>RESET PASSWORD</h1>
<div class="col-md-6">
      <div class="form-group">
          <label for="password">OLD PASSWORD</label>
          <input type="password" class="form-control" name="pass" id="opass" placeholder="Enter old password">
       </div>    
</div>

<div class="col-md-6">
      <div class="form-group">
          <label for="password">NEW PASSWORD</label>
          <input type="password" class="form-control" name="pass" id="npass" placeholder="Enter new password">
       </div>
       
       </div>
     
<div class="col-md-6">
      <div class="form-group">        
          <label for="password">CONFIRMED PASSWORD</label>
          <input type="password" class="form-control" name="pass" id="cpass" placeholder="Confirmed password">
       </div>    
</div>
</div>



   <button type="reset password" class="btn btn-default" style="color:white;background-color:forestgreen;">reset password</button>


 
 

</div>
 
 

 
 	
	
 