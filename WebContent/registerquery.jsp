<%@page import ="java.util.*"%>
<%@ include file="Database/connect.jsp" %>

<html>
<body>
<%





     
	      String v1=request.getParameter("pquery");
          String v2=request.getParameter("pname");
          String v3=request.getParameter("pid");
		 String v4=request.getParameter("email");
		 String v5=request.getParameter("cno");
      
	        
		String soln="Waiting";
		
		try
		{
			 
		int s1=0,s2=0,s3=0,s4=0,s5=0;
		PreparedStatement pst2=connection.prepareStatement("insert into QueryCategory(StQuery,SName,usn,EMail,cno,Soln) values(?,?,?,?,?,?)");
		pst2.setString(1,v1);
        pst2.setString(2,v2);
        pst2.setString(3,v3);
		pst2.setString(4,v4);
		pst2.setString(5,v5);
        pst2.setString(6,soln);
   
		pst2.executeUpdate();
		}
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  

%>


</body>
</html>