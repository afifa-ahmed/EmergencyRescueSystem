import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.Paillier;

public class UpdateSensorData extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		java.util.Date td = new java.util.Date();
		SimpleDateFormat sdf = new SimpleDateFormat ( "dd/MM/yyyy" );
		String dt = sdf.format ( td ).toString();

		String rep="Waiting";
		String soln="No";

		try {
			Class.forName("com.mysql.jdbc.Driver");


			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","");


			Statement stmt = con.createStatement();
			String query = "insert into SensorDetails(PName,bp,sugar,hb,bt,dt,status,solution) values('"+request.getParameter("pname")+"',"
					+ "'"+Paillier.decrypt(request.getParameter("bp"))+"','"+Paillier.decrypt(request.getParameter("sugar"))+"',"
					+ "'"+Paillier.decrypt(request.getParameter("hb"))+"','"+Paillier.decrypt(request.getParameter("bt"))+"','"+dt+"','"+rep+"','"+soln+"')";	
			stmt.executeUpdate(query);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
