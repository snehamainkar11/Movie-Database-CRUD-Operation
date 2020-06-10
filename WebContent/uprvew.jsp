<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>
<%@page import="java.sql.*" %>
	<%

	    
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","admin");

     	String id= (request.getParameter("rid"));
	   
	    String rnm=request.getParameter("rname");
	    String email=request.getParameter("remail");
	   
	    String sql="update Reviewer set rname='"+rnm+"',email='"+email+"' where rid="+id;
		PreparedStatement ps=con.prepareStatement(sql);
		
		int n=ps.executeUpdate();
		
		
		
		if (n != 0 ) { %>
        <br>
        <TABLE style="background-color: #E3E4FA;" 
            WIDTH="30%" border="1">
	      <tr><th>Data is updated successfully 
             in database.</th></tr>
	   </table><%
		}
		  response.sendRedirect("showreviewer.jsp");
	   
	   
	 
	   
	    
		
		
	%>
	
	</body>
</html>

</body>
</html>