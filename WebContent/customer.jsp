<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@include file="admin_interface.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="./bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="fontawesome/css/all.css">


        </head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="col-sm-8">
                 <div class="panel-body">
                     <table id="tbl-student" class="table table-responsive table-bordered" cellpadding ="0" width="100%">
                         <thead>
                             <tr>
                                    <th>Student Name</th>
                                    <th>Course</th>
                                    <th>Fee</th>
                                    <th>Actions    <a href="add.jsp?add="class="fa fa-plus"  style="margin-left:30px;"title="Add"></a> </th>
                             </tr>  
                             <tr>
                             <td>asdfghj</td>
                                <td>asdfghj</td>
                                   <td>asdfghj</td>
                        
             
                             
                             
                                 <td>
                                  <a href="edit.jsp?edit=" title="Edit"><i class="fa fa-edit"  style="margin-left:30px;"></i></a> 
                                 <a href="delete.jsp?delete=" title="Delete"><i class="fa fa-trash" style="margin-left:30px;"></i></a></td>
                             </tr> 
                             
                                             	
                             
                             
                     </table>    
                 </div>

            </div>  
        </div>
</body>
</html>