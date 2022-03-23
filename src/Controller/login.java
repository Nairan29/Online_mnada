package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import Connection.DbConnection;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @return 
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("username");
		String password = request.getParameter("password");
		ResultSet logins = null;

	
		try {
			
			Connection con=DbConnection.createConnection();
			
			String loginInsertQuery = "SELECT * FROM login where email='"+email+"' and password='"+password+"' ";
				Statement loginInsertStatement = con.createStatement();
				logins = loginInsertStatement.executeQuery(loginInsertQuery);
				try{
			
						if(logins.next()){
			        		String Status = logins.getString("Status");
							System.out.print(logins.getString("Status"));
					        	if(logins.getString("Status").equals(Status)) {
					        		String UserEmail1 = logins.getString("email");
									//String Status  = logins.getString("Status");
									String Role  = logins.getString("Role");
	
									HttpSession httpSession = request.getSession();
						            // By setting the variable in session, it can be forwarded
						            httpSession.setAttribute("email", UserEmail1);
						            httpSession.setAttribute("Status", Status);
						            httpSession.setAttribute("Role", Role);
						            response.sendRedirect("admin_interface.jsp");
						          
					        		
					        	}else {
					        		String blockeduser  = "This user is blocked";
									HttpSession httpSession = request.getSession();
						            // By setting the variable in session, it can be forwarded
						            httpSession.setAttribute("error", blockeduser);
						            System.out.print("This user is blocked");
						            
					        	}
					        	   
						}else{
							String error  = "Invalid UserEmail or Password";
							HttpSession httpSession = request.getSession();
				            // By setting the variable in session, it can be forwarded
				            httpSession.setAttribute("error", error);
				            System.out.print("incorect UserEmail or password ");
				           
					    }
						
					
						
					
				}catch (Exception e) {
					e.printStackTrace();
				}				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
		}
	}
}




