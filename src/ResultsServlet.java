import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.DBConnection;

    public class ResultsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String usn=request.getParameter("T1");
	     String per=request.getParameter("T2");
	     String result=request.getParameter("T3");


	               

			
			try
			{
				 
				int s1=0,s2=0,s3=0,s4=0,s5=0;
				
               Connection connection=DBConnection.getConnection();
               
			   PreparedStatement pst2=connection.prepareStatement("insert into Result values(?,?,?)");
	           pst2.setString(1,usn);
	           pst2.setString(2,per);
	           pst2.setString(3,result);
	               
	    	   pst2.executeUpdate();
	           Statement st=connection.createStatement();
	       
	           System.out.println("RESULT DATA ADDED SUCCESSFULLY");
	           response.sendRedirect("AdminMenu.htm"); 
			}
		  
		    catch(Exception e)
	        {
		    	e.printStackTrace();
		    }  
	}

}
