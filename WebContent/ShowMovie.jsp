<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
}
</style>
</head>
<body>
<%@page import="java.sql.*" %>
	<%
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","admin");
		String sql = "select Movie1.mid,mname,genres,release,collection,director,actor,role,stars from Movie1,Moviecast,Ratings where Movie1.mid=Moviecast.mid and Ratings.mid=Movie1.mid";
		
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);
		
		%>
		<h2>Movie Details</h2>
		<TABLE>
	      <thead>
	          <tr>
	             <th>Movie Id</th>
	             <th>Movie Name</th>
	             <th>Genres</th>
	             <th>Release Year</th>
	             <th>Collection in Rs</th>
	             <th>Director</th>
	             
	             <th>Movie Cast</th>
	             <th>Role of Cast</th>
	             <th> Ratings(out of 10)</th>
	             <th colspan="2">Action</th>
	          </tr>
	      </thead>
	      <tbody><% 
		while(rs.next())
		{
			%>
			<tr>
			 <td><%=rs.getInt(1) %></td>
			 <td><%=rs.getString(2) %></td>
             <td><%=rs.getString(3) %></td>
             <td><%=rs.getInt(4) %></td>
             <td><%=rs.getInt(5) %></td>
              <td><%=rs.getString(6) %></td>
              <td><%=rs.getString(7) %></td>
	          <td><%=rs.getString(8) %></td>
	          <td><%=rs.getInt(9) %></td>
	          <td><a href="updateJSP.jsp?mid=<%=rs.getString("mid")%>">update</a></td>
	          <td><a href="delete.jsp?mid=<%=rs.getString("mid")%>">delete</a></td>
	           
			<%
		}
	     
	     
		
	%>
	</tr></tbody></TABLE>
	</body>
</html>