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
	<div class="panel-heading"style="background-color:lightskyblue">
		All Product
	</div>
	<div class="panel-body">
	
	<!-- Button trigger modal -->
<button data-toggle="modal" data-target="#squarespaceModal" class="btn btn-primary center-block" style="float:right;background-color:forestgreen">Add Product</button>

	<table class="table">
  		<thead>
    <tr>
      <th scope="col">#</th>
    
      <th scope="col">Product name</th>
      <th scope="col">Subcategory id</th>
      <th scope="col">Product description</th>     
      <th scope="col">Action</th> 
      
    </tr>
  </thead>
  <tbody>
    <%
  try {
	Connection con=DbConnection.createConnection();
	String loginInsertQuery = "SELECT * from product,subcategory WHERE product.subcategoryid = subcategory.subcategoryid ";   
	Statement SelectStatement = con.createStatement();
	ResultSet resultSet = SelectStatement.executeQuery(loginInsertQuery);
	while (resultSet.next()) {
		String pname = resultSet.getString("productname");
		String subcid = resultSet.getString("subcategoryname");	
		String pdesc = resultSet.getString("productdescription");
		String pid = resultSet.getString("productid");
		
%>
    <tr>
      <th scope="row">1</th>
    
      <td><%= pname%></td>
      <td><%= subcid%></td>
  
      <td><%= pdesc%></td>
     
      <td>
       <button data-toggle="modal" data-target="#<%= pid %>" type="button" class="btn btn-primary" >
  		<i class="glyphicon glyphicon-pencil"></i>
	</button>
	<button type="button" class="btn btn-danger">
	 	<i class="glyphicon glyphicon-trash"></i>
	</button>
      </td>
      
      <div class="modal fade" id="<%= pid %>" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
  <div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">?</span><span class="sr-only">Close</span></button>
			<h3 class="modal-title" id="lineModalLabel">Edit product</h3>
		</div>
		<div class="modal-body">
		<%
  try {
	
	String productInsertQuery = "SELECT * from product,subcategory WHERE product.subcategoryid=subcategory.subcategoryid ";   
	Statement SelStatement = con.createStatement();
	ResultSet resulttSet = SelStatement.executeQuery(productInsertQuery);
	while (resulttSet.next()) {
		String prname = resultSet.getString("productname");
		String subcatid = resultSet.getString("subcategoryname");	
		String prodesc = resultSet.getString("productdescription");
		String proid = resultSet.getString("productid");
		
%>
			
            <!-- content goes here -->
			<form action="EditAllProductServlet" method="post">
            <div class="row">
            	<div class="col-md-12">
            		<div class="form-group">
                <label for="exampleInputEmail1">Product name</label>
                <input type="text" class="form-control" value="<%=prname %>"  name="pname" id="exampleInputEmail1" placeholder="Enter productname">
                <input type="hidden" class="form-control" name="email" value="<%=httpSession.getAttribute("email") %>"  >
              </div>
              
              <input type='hidden' value="<%= proid%>" name="idproduct">
            	</div>
            	<div class="col-md-12">
            		<div class="form-group">
                <label for="exampleInputEmail1">subcategory name</label>
                <select name="sid" class="form-control" id="exampleInputEmail1">
                	<option>Select name</option>
                	<%
  try {
	String producttInsertQuery = "SELECT * from subcategory";   
	Statement SeleStatement = con.createStatement();
	ResultSet resultSets = SeleStatement.executeQuery(loginInsertQuery);
	while (resultSet.next()) {
		String subcaid = resultSet.getString("subcategoryid");
		String subcname = resultSet.getString("subcategoryname");	
		
%>
	                	<option value="<%=subcid %>"><%=subcname%></option>   
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
                <label for="exampleInputEmail1">Product description</label>               
                <textarea name="pdesc" class="form-control" rows="4" cols="50"> <%=prodesc %></textarea>
              </div>
            	</div>
            	
            	
            	
            	
            	</div>
            	
            	
             
              <button type="submit" class="btn btn-default">Submit</button>
            </form>
             <%
    }
  } catch (Exception e) {
	  e.printStackTrace();
  }
  
  %>             	

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
			<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">?</span><span class="sr-only">Close</span></button>
			<h3 class="modal-title" id="lineModalLabel">Add product</h3>
		</div>
		<div class="modal-body">
			
            <!-- content goes here -->
			<form action="All_ProductServlet" method="post">
            <div class="row">
            	<div class="col-md-12">
            		<div class="form-group">
                <label for="exampleInputEmail1">Product name</label>
                <input type="text" class="form-control" name="pname" id="exampleInputEmail1" placeholder="Enter productname">
                <input type="hidden" class="form-control" name="email" value="<%=httpSession.getAttribute("email") %>"  >
              </div>
            	</div>
            	<div class="col-md-12">
            		<div class="form-group">
                <label for="exampleInputEmail1">subcategory name</label>
                <select name="sid" class="form-control" id="exampleInputEmail1">
                	<option>Select name</option>
                	<%
  try {
	Connection con=DbConnection.createConnection();
	String loginInsertQuery = "SELECT * from subcategory";   
	Statement SelectStatement = con.createStatement();
	ResultSet resultSet = SelectStatement.executeQuery(loginInsertQuery);
	while (resultSet.next()) {
		String subcid = resultSet.getString("subcategoryid");
		String subcname = resultSet.getString("subcategoryname");	
		
%>
	                	<option value="<%=subcid %>"><%=subcname%></option>   
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
                <label for="exampleInputEmail1">Product description</label>               
                <textarea name="pdesc" class="form-control" rows="4" cols="50"></textarea>
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