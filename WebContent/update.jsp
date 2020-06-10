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

     	String id= (request.getParameter("mid"));
	    String ryr= (request.getParameter("release"));
	    String cln= (request.getParameter("collection"));
	   
	    String mnm=request.getParameter("mname");
	    String gen=request.getParameter("genres");
	    String dir=request.getParameter("director");
	    String rtg= (request.getParameter("ratings"));    
	    String cast=request.getParameter("mcast");
	    String role=request.getParameter("arole");
	   
	    String sql="update Movie1 set mname='"+mnm+"',genres='"+gen+"',release="+ryr+",collection="+cln+",director='"+dir+"' where mid="+id;
		PreparedStatement ps=con.prepareStatement(sql);
		
		int n=ps.executeUpdate();
		
		String sql1="update MovieCast set actor='"+cast+"',role='"+role+"' where mid="+id;
		PreparedStatement ps1=con.prepareStatement(sql1);
		int n1=ps1.executeUpdate();
		
		
		String sql3="update Ratings set stars="+rtg+" where mid="+id+" and  rid="+id; 
		PreparedStatement ps3=con.prepareStatement(sql3);
		int n3=ps3.executeUpdate();
		
		if (n != 0 || n1!=0) { %>
        <br>
        <TABLE style="background-color: #E3E4FA;" 
            WIDTH="30%" border="1">
	      <tr><th>Data is updated successfully 
             in database.</th></tr>
	   </table><%
		}
		  response.sendRedirect("ShowMovie.jsp");
	   
	   
	 
	   
	    
		
		
	%>
	
	</body>
</html>
