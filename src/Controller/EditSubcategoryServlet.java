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
 * Servlet implementation class EditSubcategoryServlet
 */
@WebServlet("/EditSubcategoryServlet")
public class EditSubcategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditSubcategoryServlet() {
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
		PrintWriter out=response.getWriter();
		String cname = request.getParameter("subcategoryname");		
		String cdesc = request.getParameter("description");
		String cid = request.getParameter("categoryid");
		String scid = request.getParameter("subid");
	
		try {
			
			Connection con=DbConnection.createConnection();
			//Data zinaingizwa kweny login
			String query = "UPDATE subcategory SET subcategoryname='"+cname+"',description='"+cdesc+"',categoryid='"+cid+"' WHERE subcategoryid='"+scid+"'";

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

