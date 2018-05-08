<%@page import ="java.util.*"%>
<%@ include file="Database/connect.jsp" %>
<%@page import="org.json.simple.JSONObject"%>
 <%@page contentType="text/html; charset=UTF-8"%>
 
<html>
<body>
<%
     
	      String oa=request.getParameter("oa");
            String openion=request.getParameter("openion");
           int res=0;

		try
		{
				
				
		JSONObject obj=new JSONObject();
				
		PreparedStatement pst2=connection.prepareStatement("insert into Openion values(?,?)");

		pst2.setString(1,oa);
           pst2.setString(2,openion);
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