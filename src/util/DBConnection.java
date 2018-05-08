package util;
import java.sql.Connection;
import java.sql.DriverManager;


public class DBConnection
{

 public static Connection getConnection() {
		Connection con=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			String url= "jdbc:mysql://localhost/project";
			String un="root";
			String pw="";
			con=DriverManager.getConnection(url,un,pw);
			System.out.println("Connection established successfully");


		}
		catch(Exception e)
		{
			e.printStackTrace();

		}

		return con;
	}

	public static void main(String args[])
	{
		Connection con=getConnection();

	}

	
	
}