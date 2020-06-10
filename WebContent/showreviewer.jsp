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
}
</style>

</head>
<body>

<%@page import="java.sql.*" %>
	<%
	   
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","admin");
		    String sql1 = "select * from Reviewer";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql1);
	%>
			<h2>Reviewer Details</h2>
			<TABLE>
		      <thead>
		          <tr>
		             <th>Reviewer Id</th>
		             <th>Reviewer Name</th>
		             <th>Email</th>
		             <th colspan="2">Action</th>
		     
		          </tr>
		      </thead>
		      <tbody>
		 <% 
			while(rs.next())
			{
				%>
				<tr>
				 <td><%=rs.getInt(1) %></td>
				 <td><%=rs.getString(2) %></td>
	             <td><%=rs.getString(3) %></td>
	             <td><a href="updateReviewer.jsp?rid=<%=rs.getString("rid")%>">update</a></td>
	           
	             <td><a href="deleteReviewer.jsp?rid=<%=rs.getString("rid")%>">delete</a></td>
	           
	            </tr>
	            
				<%
			}%>		
			</tbody>
         </TABLE>
		
</body>
</html>