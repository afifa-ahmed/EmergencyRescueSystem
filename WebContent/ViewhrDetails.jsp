<%@ include file="../Database/connect.jsp" %>
<%@page import="org.json.simple.JSONObject"%>
 <%@page contentType="text/html; charset=UTF-8"%>





<%

String pid=request.getParameter("pid");

	JSONObject obj=new JSONObject();

      	
	String s1=null, s2, s3,s4;

      	try 
	{
	

           
           String query="select * FROM Result where pid='"+pid+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	   if ( rs.next()==true )
	   {
		s1=rs.getString("result");
		
		}
		
		obj.put("hreport",s1);
		
    
    	out.print(obj);
    	out.flush();
		
		}

         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>



