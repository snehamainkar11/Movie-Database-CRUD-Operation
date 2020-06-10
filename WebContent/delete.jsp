<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("mid");
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","admin");
     Statement st1=con.createStatement();
     Statement st=con.createStatement();
     Statement st2=con.createStatement();
int i=st.executeUpdate("DELETE FROM Movie1 WHERE mid="+id);
int i1=st1.executeUpdate("DELETE FROM Moviecast WHERE mid="+id);
int i2=st2.executeUpdate("DELETE FROM Ratings WHERE mid="+id);
out.println("Data Deleted Successfully!");
response.sendRedirect("ShowMovie.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
</body>
</html>