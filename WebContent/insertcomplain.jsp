<%@page import ="java.util.*"%>
<%@ include file="Database/connect.jsp" %>
<%@page import="org.json.simple.JSONObject"%>
 <%@page contentType="text/html; charset=UTF-8"%>
 
<html>
<body>
<%
     int res=0;
	      String to1=request.getParameter("To");
          String mno=request.getParameter("mob");
	      String comp=request.getParameter("complaints");
          String about=request.getParameter("cat");
           

		try
		{
				
		
		JSONObject obj=new JSONObject();
		

				
		PreparedStatement pst2=connection.prepareStatement("insert into complaints values(?,?,?,?)");

		pst2.setString(1,to1);
           pst2.setString(2,mno);
		   		pst2.setString(3,comp);
           pst2.setString(4,about);

		pst2.executeUpdate();
		
		res=1;

	obj.put("status",res);
    
    out.print(obj);
    out.flush();

		}
	  
	catch(SQLException e)
        {
		
		res=0;
		out.print(e.getMessage());
	    }  

%>


</body>
</html>