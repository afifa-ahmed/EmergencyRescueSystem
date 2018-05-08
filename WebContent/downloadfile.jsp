<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>

<html>
<style type="text/css">
<!--
.style1 {color: #FF00FF}
-->
</style>
<body>
<%
	int byteNo;
   String  s1="";


  String fid=request.getParameter("Fid");


         int id=Integer.parseInt(fid);

           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
           Connection con = DriverManager.getConnection("jdbc:odbc:mobile");
           
           Statement st=con.createStatement();
           String query="select *  from UploadedFile where fid="+id+" ";  
          
           ResultSet rs=st.executeQuery(query);
while ( rs.next()==true)
	   {
s1=rs.getString(2);

  }

  



File f=new File(s1);

FileInputStream fin=new FileInputStream("C:\\check\\"+ f.getName()); 

 
     FileOutputStream  fout=new FileOutputStream("C:\\"+ f.getName());

          int len=fin.available();
         do
         {
               byteNo=fin.read();        // read() returns a byte no read from the file
             fout.write(byteNo);
         }while(byteNo!=-1);

 out.print(s1 +"Downloaded Successfully");
          
%>

<a href="StudentLogin.html">Back</a>
</body>
</html>