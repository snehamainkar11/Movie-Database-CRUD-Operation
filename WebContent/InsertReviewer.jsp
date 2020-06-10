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

	    try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","admin");

     	int id= Integer.parseInt(request.getParameter("rid"));
	    String rnm =request.getParameter("rname");
	    String email=request.getParameter("remail");
	    
		String sql="insert into Reviewer values(?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1,id);
		ps.setString(2,rnm);
		ps.setString(3,email);
		
		
		int n=ps.executeUpdate();
	
		if (n != 0) { 
			out.println("Record Inserted Successfully!!!");
			response.sendRedirect("showreviewer.jsp");
        
		response.sendRedirect("insertMovie.jsp");
	   }  
			
       
		
	   }
		
	    catch (Exception ex) {
            out.println(ex.toString());
   
               }
	%>
  



</body>
</html>