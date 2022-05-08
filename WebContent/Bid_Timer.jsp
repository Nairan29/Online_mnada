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
		Bid Timer
	</div>
	
	
	<div class="panel-body">
	<button data-toggle="modal" data-target="#squarespaceModal" class="btn btn-primary center-block" style="float:right">Add Bid</button>
	

	<table class="table table-striped">
  		<thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Product Name]</th>
      <th scope="col">Price</th>     
      <th scope="col">fromdate</th>
      <th scope="col">todate</th>
      <th scope="col">status</th>
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
		String bid = resultSet.getString("bidid");	
		
%>
    <tr>
      <th scope="row">1</th>
    
      <td><%= cname%></td>
      <td><%= cdesc%></td>
      <td><%= cstatus%></td>
      <td><%= cstatus%></td>
       <td><%= cstatus%></td>
      
      <td>
      <button type="button" class="btn btn-primary" >
  		<i class="glyphicon glyphicon-pencil"></i>
	</button>
	<button type="button" class="btn btn-primary">
	 	<i class="glyphicon glyphicon-trash"></i>
	</button>
      </td>

    </tr>
    <div class="modal fade" id="#<%= bid%>" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
  <div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
			<h3 class="modal-title" id="<%= bid%>">My category</h3>
		</div>
		<div class="modal-body">
			
            <!-- content goes here -->
			<form action="BidTimerServlet" method="post">
            <div class="row">
            	<div class="col-md-12">
            		<div class="form-group">
                <label for="exampleInputEmail1">Product name</label>
                <select name="sid" class="form-control" id="exampleInputEmail1">
                	<option>Enter your product</option>
                	<%
  try {
	String bidInsertQuery = "SELECT * from bid where bidid='"+bid+"'";   
	Statement SelecStatement = con.createStatement();
	ResultSet resultsSet = SelecStatement.executeQuery(bidInsertQuery);
	while (resultsSet.next()) {
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
                <label for="exampleInputEmail1">Starting price</label>
                <input type="number" class="form-control" name="stprice" id="exampleInputEmail1" placeholder="Enter price">
              </div>
            	</div>
            	
            	
            	
            	<div class="col-md-12">
            		<div class="form-group">
                <label for="exampleInputEmail1">Form date</label>
                <input type="date" class="form-control" name="mname" id="exampleInputEmail1" placeholder="Enter date">
              </div>
            	</div>
            	<div class="col-md-12">
            		<div class="form-group">
                <label for="exampleInputEmail1">To date</label>
                <input type="date" class="form-control" name="mname" id="exampleInputEmail1" placeholder="Enter date">
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
			<h3 class="modal-title" id="lineModalLabel">Add bid timer</h3>
		</div>
		<div class="modal-body">
			
            <!-- content goes here -->
			<form action="BidTimerServlet" method="post">
            <div class="row">
            	<div class="col-md-12">
            		<div class="form-group">
                <label for="exampleInputEmail1">Product name</label>
                <select name="productname" class="form-control" id="exampleInputEmail1">
                	<option>Enter your product</option>
                	<%
  try {
	Connection con=DbConnection.createConnection();
	String loginInsertQuery = "SELECT * from product";   
	Statement SelectStatement = con.createStatement();
	ResultSet resultSet = SelectStatement.executeQuery(loginInsertQuery);
	while (resultSet.next()) {
		String subcid = resultSet.getString("productid");
		String subcname = resultSet.getString("productname");	
		
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
                <label for="exampleInputEmail1">Starting price</label>
                <input type="number" class="form-control" name="startingprice" id="exampleInputEmail1" placeholder="Enter price">
              </div>
            	</div>
            	
            	
            	
            	<div class="col-md-12">
            		<div class="form-group">
                <label for="exampleInputEmail1">Form date</label>
                <input type="date" class="form-control" name="formdate" id="exampleInputEmail1" placeholder="Enter date">
              </div>
            	</div>
            	<div class="col-md-12">
            		<div class="form-group">
                <label for="exampleInputEmail1">To date</label>
                <input type="date" class="form-control" name="todate" id="exampleInputEmail1" placeholder="Enter date">
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
