<%@ include file="../Database/connect.jsp" %>
<%@page import="org.json.simple.JSONObject"%>

 <%@page contentType="text/html; charset=UTF-8"%>
 <%@page import="java.util.* "%>
 


<html>

<body bgcolor=#FFFFFF >



<%
	JSONObject json=new JSONObject();

      	String patientid=request.getParameter("pid");
	String s1=null, s2=null, s3,s4;

      	try 
	{
	patientid="p199";
	
		List<String> list = new ArrayList<String>();
				List<String> list1 = new ArrayList<String>();
						List<String> list2 = new ArrayList<String>();
           
           String query="select * FROM Result where pid='"+patientid+"'"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	   if ( rs.next()==true )
	   {

        s1=rs.getString(2);
		s2=rs.getString(3);
		
		
		

		}
		
		
		
		json.put("sym",s1);
		json.put("result",s2);
	    
    	out.print(json);
		}

         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>



</body>
</html>