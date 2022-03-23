package Controller;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Connection.DbConnection;

/**
 * Servlet implementation class nairan
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
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
		PrintWriter out=response.getWriter();
		String fname = request.getParameter("fname");
		String mname = request.getParameter("mname");
		String lname=request.getParameter("lname");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String Phone = request.getParameter("Phone");
		String role = request.getParameter("role");
	
		try {
			
			Connection con=DbConnection.createConnection();
			//Data zinaingizwa kweny login
			String query = "INSERT INTO login (firstname,middlename,lastname,phonenumber,email,username,password,status,role) VALUES ('"+fname+"','"+mname+"','"+lname+"','"+Phone+"','"+email+"','"+email+"','"+lname+"','Active','"+role+"')";   
				Statement st1=con.createStatement();
				int loginInsert =st1.executeUpdate(query);
				if(loginInsert == 1){
					if(role.equals("Customer")){
						String queryString = "INSERT INTO customer (email,address) VALUES ('"+email+"','"+address+"')";   
						Statement custIns=con.createStatement();
						int CustomerInsert =custIns.executeUpdate(queryString);
						response.sendRedirect("User_management.jsp");
					}else if (role.equals("Farmer")){
						String queryString = "INSERT INTO farmer (email,address) VALUES ('"+email+"','"+address+"s')";   
						Statement custIns=con.createStatement();
						int CustomerInsert =custIns.executeUpdate(queryString);
						response.sendRedirect("User_management.jsp");
					}else {
						response.sendRedirect("User_management.jsp");
						
					}
				
				
					}else{
						System.out.println("not success");
					}
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
		}
	}
}




