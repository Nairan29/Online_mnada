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
@WebServlet("/subcategory")
public class sub_categoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sub_categoryServlet() {
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
		String subcname = request.getParameter("subcategoryname");		
		String subcdesc = request.getParameter("description");
		String catid = request.getParameter("categoryid");
		
	
		try {
			
			Connection con=DbConnection.createConnection();
			//Data zinaingizwa kweny login
			String query = "INSERT INTO subcategory (subcategoryname,description,status,categoryid) VALUES ('"+subcname+"','"+subcdesc+"','active','"+catid+"')";   
				Statement st1=con.createStatement();
				int loginInsert =st1.executeUpdate(query);
				if(loginInsert == 1){
					response.sendRedirect("sub_category.jsp");
					}else{
						System.out.println("not success");
					}
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
		}
	}
}




