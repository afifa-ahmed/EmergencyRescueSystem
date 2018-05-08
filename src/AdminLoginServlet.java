import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.DBConnection;


public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 String username=request.getParameter("username");      

	        String Password=request.getParameter("password");
		    
	        try
	        {
	        	   String sql="SELECT * FROM Admin where username='"+username+"' and password='"+Password+"'";
	        	   Connection connection= DBConnection.getConnection();
	               Statement stmt = connection.createStatement();
	        	   ResultSet rs =stmt.executeQuery(sql);
	        	   String utype="";
	        	   if(rs.next())
	        	    {
	        	    response.sendRedirect("AdminMenu.htm");
	                   }
	        	    else
	        	    {
	        	    response.sendRedirect("wronglogin.html");
	                  }
	        }

	        catch(Exception e)
	        {
	        	e.printStackTrace();
	        	
	        }
	}

	

}
