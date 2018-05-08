import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.DBConnection;
public class CustomerRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	      String pname=request.getParameter("name");
          String age=request.getParameter("ag");
          String gender=request.getParameter("gndr");
          String address=request.getParameter("add");
          String mobile=request.getParameter("mb");
          String email=request.getParameter("email");
          String password=request.getParameter("pwd");

       // String ccat="Student"; 
		  try
		  {
			 
			
		    Connection connection= DBConnection.getConnection();
            PreparedStatement pst2=connection.prepareStatement("insert into patientreg values(?,?,?,?,?,?,?,?,?)");

		    pst2.setString(1,pname);
		    pst2.setString(2,null);
		    pst2.setString(3,age);
            pst2.setString(4,gender);
            pst2.setString(5,address); 
            pst2.setString(6,null);
            pst2.setString(7,mobile); 
            pst2.setString(8,email);
            pst2.setString(9,password);
		    pst2.executeUpdate();

            Statement st=connection.createStatement();
           
            st.executeUpdate("insert into  login values('"+pname+"','"+email+"','"+password+"')");
            
         
           System.out.println("CUSTOMER DATA ADDED SUCCESSFULLY");
           response.sendRedirect("index.html");    
		  }
	    catch(Exception e)
        {
		e.printStackTrace();
	    }  	
}
}
