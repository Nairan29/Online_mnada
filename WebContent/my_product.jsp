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
	<div class="panel-heading">
		All Product
	</div>
	<div class="panel-body">
	
	<!-- Button trigger modal -->
<button data-toggle="modal" data-target="#squarespaceModal" class="btn btn-primary center-block" style="float:right">Add Product</button>

	<table class="table table-striped">
  		<thead>
    <tr>
      <th scope="col">#</th>
    
      <th scope="col">FullName</th>
      <th scope="col">Phone</th>
      <th scope="col">Status</th>
      <th scope="col">Role</th>
      <th scope="col">Action</th> 
      
    </tr>
  </thead>
  <tbody>
    <%
  try {
	Connection con=DbConnection.createConnection();
	String loginInsertQuery = "SELECT * from login";   
	Statement SelectStatement = con.createStatement();
	ResultSet resultSet = SelectStatement.executeQuery(loginInsertQuery);
	while (resultSet.next()) {
		String Firstname = resultSet.getString("firstname");
		String Middlename = resultSet.getString("middlename");	
		String Lastname = resultSet.getString("lastname");	
		String Status = resultSet.getString("status");	
		String Role = resultSet.getString("role");	
		String Username = resultSet.getString("username");
//		String Address = resultSet.getString("address");
		String Phone = resultSet.getString("phonenumber");
%>
    <tr>
      <th scope="row">1</th>
    
      <td><%= Firstname+" "+Middlename+" "+Lastname%></td>
      <td><%= Phone%></td>
  
      <td><%= Status%></td>
      <td><%= Role%></td>
      <td>
      <button type="button" class="btn btn-primary" >
  		<i class="glyphicon glyphicon-pencil"></i>
	</button>
	<button type="button" class="btn btn-primary">
	 	<i class="glyphicon glyphicon-trash"></i>
	</button>
      </td>

    </tr>
      <%
    }
  } catch (Exception e) {
	  e.printStackTrace();
  }
  
  %>
      </tbody>
	</table>
	
	</div>
<!-- Insert modal Start here-->
<div class="modal fade" id="squarespaceModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
  <div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
			<h3 class="modal-title" id="lineModalLabel">ADD PRODUCT</h3>
		</div>
		<div class="modal-body">
			
            <!-- content goes here -->
			<form action="myproductServlet" method="post">
            <div class="row">
            	<div class="col-md-12">
            		<div class="form-group">
                <label for="exampleInputEmail1">Product name</label>
                <input type="text" class="form-control" name="pname" id="exampleInputEmail1" placeholder="Enter productname">
              </div>
            	</div>
            	<div class="col-md-12">
            		<div class="form-group">
                <label for="exampleInputEmail1">Category id</label>
                <input type="text" class="form-control" name="cid" id="exampleInputEmail1" placeholder="Enter categoryid">
              </div>
            	</div>
            	<div class="col-md-12">
            		<div class="form-group">
                <label for="exampleInputEmail1">Product description</label>               
                <textarea name="pdesc" class="form-control" rows="4" cols="50"></textarea>
              </div>
            	</div>
            	</div>
            	
            	
             
              <button type="submit" class="btn btn-default">Submit</button>
            </form>

		</div>
		<div class="modal-footer">
			<div class="btn-group btn-group-justified" role="group" aria-label="group button">
				<div class="btn-group" role="group">
					<button type="button" class="btn btn-default" data-dismiss="modal"  role="button">Close</button>
				</div>
				<div class="btn-group btn-delete hidden" role="group">
					<button type="button" id="delImage" class="btn btn-default btn-hover-red" data-dismiss="modal"  role="button">Delete</button>
				</div>
				<div class="btn-group" role="group">
					<button type="button" id="saveImage" class="btn btn-default btn-hover-green" data-action="save" role="button">Save</button>
				</div>
			</div>
		</div>
	</div>
  </div>
  <!-- Insert Modal Start -->
	</div>
</div>
<%@ include file="footer.jsp"%>
