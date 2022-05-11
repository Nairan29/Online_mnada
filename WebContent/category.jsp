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
	<div class="panel-heading"style="background-color:lightskyblue;">
		My category
	</div>
	<div class="panel-body">
	
	<!-- Button trigger modal -->
<button data-toggle="modal" data-target="#squarespaceModal" class="btn btn-primary center-block" style="float:right;background-color:forestgreen;'">Add Category</button>

	<table class="table">
  		<thead>
    <tr>
      <th scope="col">#</th>
    
      <th scope="col">Category Name</th>
      <th scope="col">Description</th>
      <th scope="col">Status</th>     
      <th scope="col">Action</th> 
      
    </tr>
  </thead>
  <tbody>
    <%
  try {
	Connection con=DbConnection.createConnection();
	String loginInsertQuery = "SELECT * from category";   
	Statement SelectStatement = con.createStatement();
	ResultSet resultSet = SelectStatement.executeQuery(loginInsertQuery);
	while (resultSet.next()) {
		String cname = resultSet.getString("categoryname");
		String cdesc = resultSet.getString("description");		
		String cstatus = resultSet.getString("status");
		String idcategory = resultSet.getString("categoryid");
		
%>
    <tr>
      <th scope="row">1</th>
    
      <td><%= cname%></td>
      <td><%= cdesc%></td>
      <td><%= cstatus%></td>
      <td>
      <button data-toggle="modal" data-target="#<%= idcategory%>" type="button" class="btn btn-primary" >
  		<i class="glyphicon glyphicon-pencil"></i>
	</button>
	<button type="button" class="btn btn-danger">
	 	<i class="glyphicon glyphicon-trash"></i>
	</button>
      </td>
      <!-- Insert modal Start here-->
<div class="modal fade" id="<%= idcategory%>" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
  <div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">�</span><span class="sr-only">Close</span></button>
			<h3 class="modal-title" id="lineModalLabel">Edit category</h3>
		</div>
		<div class="modal-body">
			<%
  try {
	
	String categoryInsertQuery = "SELECT * from category where categoryid='"+idcategory+"'";   
	Statement SelecStatement = con.createStatement();
	ResultSet resultsSet = SelecStatement.executeQuery(categoryInsertQuery);
	while (resultsSet.next()) {
		String cnamee = resultSet.getString("categoryname");
		String cdescc = resultSet.getString("description");		
		String cstatuss = resultSet.getString("status");
		String idcategoryy = resultSet.getString("categoryid");
		
		 
  
  
  %>
		
            <!-- content goes here -->
			<form action="EditCategoryServlet" method="post">
            <div class="row">
            	<div class="col-md-12">
            		<div class="form-group">
                <label for="exampleInputEmail1">Category</label>
                <input type="text" class="form-control" name="categoryname" value=<%=cnamee %> id="exampleInputEmail1" placeholder="Enter category">
              </div>
            	</div>
            	
            	<input type='hidden' value="<%= idcategory%>" name="idcategory">
            	
            	</div>
            	
            	<div class="row">
            	<div class="col-md-12">
            		<div class="form-group">
                <label for="exampleInputEmail1">Description</label>
               <textarea name="description" class="form-control" rows="4" cols="50"><%= cdescc %></textarea>
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
	        <% 
              }
  } catch (Exception e) {
	  e.printStackTrace();
  }
			%>
  </div>
  <!-- Insert Modal Start -->
      
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
	<div class="modal-content"style=background-color:lightgrey>
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">�</span><span class="sr-only">Close</span></button>
			<h3 class="modal-title" id="lineModalLabel">Add category</h3>
		</div>
		<div class="modal-body" style=background-color:lightgrey>
			
            <!-- content goes here -->
			<form action="categoryServlet" method="post">
            <div class="row">
            	<div class="col-md-12">
            		<div class="form-group">
                <label for="exampleInputEmail1">Category</label>
                <input type="text" class="form-control" name="categoryname" id="exampleInputEmail1" placeholder="Enter category">
              </div>
            	</div>
            	
            	</div>
            	
            	<div class="row">
            	<div class="col-md-12">
            		<div class="form-group">
                <label for="exampleInputEmail1">Description</label>
               <textarea name="description" class="form-control" rows="4" cols="50"></textarea>
              </div>
            	</div>
            	
            </div>
             
              <button type="submit" class="btn btn-default" style=background-color:forestgreen;color:white>Submit</button>
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
