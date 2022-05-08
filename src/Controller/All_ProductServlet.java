package Controller;

import java.io.IOException;
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
 * Servlet implementation class All_ProductServlet
 */
@WebServlet("/All_ProductServlet")
public class All_ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public All_ProductServlet() {
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
		doGet(request, response);
		String prname = request.getParameter("pname");		
		String scatid = request.getParameter("sid");
		String prdesc = request.getParameter("pdesc");
		String eml = request.getParameter("email");
		
	
		try {
			
			Connection con=DbConnection.createConnection();
			//Data zinaingizwa kweny login
			String query = "INSERT INTO product (productname,subcategoryid,productdescription,email) VALUES ('"+prname+"','"+scatid+"','"+prdesc+"','"+eml+"')";   
				Statement st1=con.createStatement();
				int product =st1.executeUpdate(query);
				if(product == 1){
					response.sendRedirect("All_product.jsp");
					}else{
						System.out.println("not success");
					}
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
		}
	}

	}


