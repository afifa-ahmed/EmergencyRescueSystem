<%@page import ="java.util.*"%>
<%@ include file="Database/connect.jsp" %>

<html>
<body>
<%
     
	      String htype="Hospitals";    
            String hospital_nm=request.getParameter("D1");
            String consult_nm=request.getParameter("T4");
            String working_hrs=request.getParameter("T1");
            
            String holidays=request.getParameter("T2");
            String address=request.getParameter("T3");
            String city=request.getParameter("T5");
            
               

		
		try
		{
			 
			int s1=0,s2=0,s3=0,s4=0,s5=0;
			

		PreparedStatement pst2=connection.prepareStatement("insert into hospital values(?,?,?,?,?,?,?)");

		   pst2.setString(1,htype);
           pst2.setString(2,hospital_nm);
		   pst2.setString(3,consult_nm);

           pst2.setString(4,working_hrs);
           pst2.setString(5,holidays);
           pst2.setString(6,address);
           pst2.setString(7,city);
           

		s2=pst2.executeUpdate();

		out.print("Hospital details added successfully!!!");

		}
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  

%>

</body>
</html> 