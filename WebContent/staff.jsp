<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@include file="navbar.jsp"%>
          <div class="container-fluid main-container">
  		<div class="col-md-2 sidebar">
  			<div class="row">
	<!-- uncomment code for absolute positioning tweek see top comment in css -->
	<div class="absolute-wrapper"> </div>
	<%@include file="sidebar.jsp" %>
	
		<!-- Home Content Start hERE -->
	
  		<div class="col-md-10 content">
  			  <div class="">
	<div class="ppanel-heading">
		A list of All Staffs
	</div>
	<hr>
	<table  class="tbl-student">
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
     

<div style="margin-left:20%";>

                                      </div>

            </div>  
        </div>
        </div>
</body>
</html>