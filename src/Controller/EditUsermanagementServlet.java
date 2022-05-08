package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Connection.DbConnection;

/**
 * Servlet implementation class EditUsermanagementServlet
 */
@WebServlet("/EditUsermanagementServlet")
public class EditUsermanagementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditUsermanagementServlet() {
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
		String fnm = request.getParameter("fname");		
		String mnm = request.getParameter("mname");
		String lnm = request.getParameter("lname");
		String userid = request.getParameter("userid");
		String phon = request.getParameter("Phone");
		String rol = request.getParameter("role");
	
		try {
			
			Connection con=DbConnection.createConnection();
			//Data zinaingizwa kweny login
			String query = "UPDATE login SET firstname='"+fnm+"',middlename='"+mnm+"',lastname='"+lnm+"',userid='"+userid+"',phonenumber='"+phon+"',role='"+rol+"' WHERE userid='"+userid+"'";

				Statement st1=con.createStatement();
				int loginInsert =st1.executeUpdate(query);
				if(loginInsert == 1){
					response.sendRedirect("User_management.jsp");
					}else{
						System.out.println("not success");
					}
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
		}
	}
}
