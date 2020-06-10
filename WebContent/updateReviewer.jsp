<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<style>

input[type=text], input[type=email]{
  width: 60%;
  height:30%;
  display: inline-block;
  border:none;
  background:transparent;
   padding: 8px;
}

input[type=text]:focus{
  width: 60%;
  height:30%;
  display: inline-block;
  border:none;
  background:#CCCCAA;;
   padding: 8px;
}

table {
  border-collapse: collapse;
  width: 60%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

button{
  background-color: #4CAF50;
  color: white;
   width: 40%;
   height:40%;
 align:center;
}
</style>
</head>
<body>
<%@page import="java.sql.*" %>
	<%
try{
	    
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","admin");

     	
     	String id= request.getParameter("rid");
     	String sql = "select * from Reviewer where rid="+id;
        Statement st=con.createStatement();
     	ResultSet rs= st.executeQuery(sql);
     if(rs.next()){
    	 
    	 %>
    	 <form method="post"action="uprvew.jsp">
     
     
     <h1>Update Details</h1>
    
     <hr>
     <TABLE>
           <tr><td>
      <label for="email"><b>Reviewer Id:</b></label></td><td>
    	<input type="text"  placeholder="Enter Movie Id" name="rid" value="<%=rs.getInt(1) %>"></td></tr>
     
     <tr><td><label for="email"><b>Reviewer Name:</b></label>
    	</td><td><input type="text"  placeholder="Enter Movie Name" name="rname" value="<%=rs.getString(2) %>"></td></tr>

	 <tr><td><label for="email"><b>Email:</b></label>
    	</td><td><input type="text"  placeholder="Enter Movie Genres" name="remail" value="<%=rs.getString(3)  %>"></td></tr>
    	
		
              <tr><td> <button type="submit">Update</button>
      </td><td> <button type="button">Cancel</button>
      
      </td></tr>
<%
}
     }
catch(Exception e){
out.println(e);
}%></TABLE>
     </form>
     </body>
     
</html>

