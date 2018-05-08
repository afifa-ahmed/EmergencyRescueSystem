<%@ include file="../Database/connect.jsp" %>

<html>
<style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
.style4 {font-size: 24px}
-->
</style>

<body bgcolor=#FFFFFF >

<p>&nbsp;</p>
<p>&nbsp;</p>
<p align="center" class="style1"><blink><span class="style4">Registered Patient List</span></blink> </p>
<div align="center">
  <table border=1 width="333" style="border-collapse: collapse" bordercolor="#111111" cellpadding="0" cellspacing="0" align="center">
    <tr><td bgcolor="#FF6600" width="145"><b>Patient Mailid</b></td>
      <td bgcolor="#FF6600" width="188"><b>Patient Name</b></td>
    </tr>
    
    
    
    
    
    <%
	
      	
	String  s1,s2, s3,s4,s5,s6,cid,s7;

      	try 
	{
           
           String query="select * FROM login"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	   while ( rs.next() )
	   {
		s1=rs.getString(1);
		s2=rs.getString(2);

%>
    
    <tr>
      <td bgcolor="#FFFFFF" width="145"><%out.println(s1);%>&nbsp;</td>
      <td bgcolor="#FFFFFF" width="188"><%out.println(s2);%>&nbsp;</td>
</tr>
    
    
    <%

	   }

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
  </table>
  </form>
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>