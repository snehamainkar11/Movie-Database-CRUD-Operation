<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #4CAF50;
  color: white;
}</style>
</head>
<body>
<%@page import="java.sql.*" %>
	<%

	    
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","admin");

     	int id= Integer.parseInt(request.getParameter("mid"));
	    int ryr= Integer.parseInt(request.getParameter("release"));
	    int cln= Integer.parseInt(request.getParameter("collection"));
	   
	    String mnm=request.getParameter("mname");
	    String gen=request.getParameter("genres");
	    String dir=request.getParameter("director");
	    int rtg= Integer.parseInt(request.getParameter("ratings"));    
	    String cast=request.getParameter("mcast");
	    String role=request.getParameter("arole");
	   
	  
	    
		String sql="insert into Movie1 values("+id+",'"+mnm+"','"+gen+"',"+ryr+","+cln+",'"+dir+"')";
		PreparedStatement ps=con.prepareStatement(sql);
		
		int n=ps.executeUpdate();
		
		String sql1="insert into MovieCast(mid,actor,role) values("+id+",'"+cast+"','"+role+"')";
		PreparedStatement ps1=con.prepareStatement(sql1);
		int n1=ps1.executeUpdate();
		
		
		String sql3="insert into Ratings(mid,rid,stars) values("+id+","+id+","+rtg+")";
		PreparedStatement ps3=con.prepareStatement(sql3);
		int n3=ps3.executeUpdate();
		
		if (n != 0 || n1!=0) { %>
        <br>
        <TABLE style="background-color: #E3E4FA;" 
            WIDTH="30%" border="1">
	      <tr><th>Data is inserted successfully 
             in database.</th></tr>
	   </table><%
		}
		  response.sendRedirect("ShowMovie.jsp");
	   
	   
	 
	   
	    
		
		
	%>
	
	</body>
</html>
