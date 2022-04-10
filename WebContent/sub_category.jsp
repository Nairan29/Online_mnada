<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Connection.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*"%>

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
		User Management
	</div>
	<div class="panel-body">
	
	<!-- Button trigger modal -->
<button data-toggle="modal" data-target="#squarespaceModal" class="btn btn-primary center-block" style="float:right">Add sub category</button>

	<table class="table table-striped">
  		<thead>
    <tr>
      <th scope="col">#</th>
    
      <th scope="col">Sub Category Name</th>
      <th scope="col">Description</th>
      <th scope="col">Category Name</th>
      <th scope="col">status</th>
      <th scope="col">Action</th>
           
    </tr>
  </thead>
  <tbody>
    <%
  try {
	Connection con=DbConnection.createConnection();
	String loginInsertQuery = "SELECT * from subcategory,category Where category.categoryid = subcategory.subcategoryid";   
	Statement SelectStatement = con.createStatement();
	ResultSet resultSet = SelectStatement.executeQuery(loginInsertQuery);
	while (resultSet.next()) {
		String subcname = resultSet.getString("subcategoryname");
		String subcdes = resultSet.getString("description");			
		String subcstatus = resultSet.getString("status");	
		String cname = resultSet.getString("categoryname");	
		
%>
    <tr>
      <th scope="row">1</th>
    
      <td><%= subcname%></td>
      <td><%= subcdes%></td>  
      <td><%= cname%></td>
       <td><%=subcstatus%></td>     
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
			<h3 class="modal-title" id="lineModalLabel">Add sub category</h3>
		</div>
		<div class="modal-body">
			
            <!-- content goes here -->
			<form action="subcategory" method="post">
            <div class="row">
            <div class="col-md-12">
            		<div class="form-group">
                <label for="exampleInputEmail1">category</label>
                <select name="categoryid" class="form-control" id="exampleInputEmail1">
                	<option value ="">Select category</option>
	                
	                	
                 <%
  try {
	Connection con=DbConnection.createConnection();
	String loginInsertQuery = "SELECT * from category";   
	Statement SelectStatement = con.createStatement();
	ResultSet resultSet = SelectStatement.executeQuery(loginInsertQuery);
	while (resultSet.next()) {
		int number=1;
		String categoryid = resultSet.getString("categoryid");
		String categoryname = resultSet.getString("categoryname");	
	
%>
                
                <option value=" <%= categoryid%>" > <%= categoryname%></option>
                    <%
    }
  } catch (Exception e) {
	  e.printStackTrace();
  }
  
  %>
	                	               	
                </select> 
              </div>
            	</div>
            	
            	<div class="col-md-12">
            		<div class="form-group">
                <label for="exampleInputEmail1">sub category</label>
                <input type="text" class="form-control" name="subcategoryname" id="exampleInputEmail1" placeholder="Enter sub category">
              </div>
            	</div>
            
            	
            	<div class="col-md-12">
            		<div class="form-group">
                <label for="exampleInputEmail1">Description</label>
                <textarea name="description" class="form-control" rows="4" cols="50"></textarea>
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
