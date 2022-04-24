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
		Profile
	</div>
<div class="panel-body">

<div class="row">
  <div class="col-md-5 content">
  <img alt="" src="pic/user login.jpg" style="width:290px;"> 
 </div>
 
<div class="col-md-7 content">
<div class="row">
<h1>USER INFORMATION</h1>
<div class="col-md-4">
      <div class="form-group">
          <label for="profile">FirstName</label>
          <input type="text" class="form-control" name="fname" id="pname" placeholder="Enter firstname">
       </div>    
</div>
<div class="col-md-4">
      <div class="form-group">
          <label for="profile">MiddleName</label>
          <input type="text" class="form-control" name="fname" id="pmname" placeholder="Enter middlename">
       </div>
       
       </div>
       
<div class="col-md-4">
      <div class="form-group">        
          <label for="profile">LastName</label>
          <input type="text" class="form-control" name="fname" id="plname" placeholder="Enter lastname">
       </div>    
</div>
</div>


<div class="row">
<div class="col-md-4">
      <div class="form-group">
          <label for="profile">Age</label>
          <input type="number" class="form-control" name="fname" id="page" placeholder="Enter age">
       </div>    
</div>
<div class="col-md-4">
      <div class="form-group">
          <label for="profile">Email</label>
          <input type="email" class="form-control" name="fname" id="pemail" placeholder="Enter email">
       </div>
       
       </div>
       
<div class="col-md-4">
      <div class="form-group">        
          <label for="profile">Address</label>
          <input type="text" class="form-control" name="fname" id="paddress" placeholder="Enter address">
       </div>    
</div>
</div>
   <button type="update" class="btn btn-default" style="color:white;background-color:forestgreen;">Update</button>


 
 

</div>
 
 

 
 	
	
 