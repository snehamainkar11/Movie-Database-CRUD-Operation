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

     	
     	String id= request.getParameter("mid");
     	String sql = "select Movie1.mid,mname,genres,release,collection,director,actor,role,stars from Movie1,Moviecast,Ratings where Movie1.mid="+id+" and Moviecast.mid="+id;
        Statement st=con.createStatement();
     	ResultSet rs= st.executeQuery(sql);
     if(rs.next()){
    	 
    	 %>
    	 <form method="post"action="update.jsp">
     
     
     <h1>Update Details</h1>
    
     <hr>
     <TABLE>
           <tr><td>
      <label for="email"><b>Movie Id:</b></label></td><td>
    	<input type="text"  placeholder="Enter Movie Id" name="mid" value="<%=rs.getInt(1) %>"></td></tr>
     
     <tr><td><label for="email"><b>Movie Name:</b></label>
    	</td><td><input type="text"  placeholder="Enter Movie Name" name="mname" value="<%=rs.getString(2) %>"></td></tr>

	 <tr><td><label for="email"><b>Movie Genres:</b></label>
    	</td><td><input type="text"  placeholder="Enter Movie Genres" name="genres" value="<%=rs.getString(3)  %>"></td></tr>
    	
		 <tr><td> <label for="email"><b>Movie Release year:</b></label>
		</td><td><input type="text"  placeholder="Movie Release Date" name="release" value="<%=rs.getInt(4)  %>"></td></tr>
		
		  <tr><td><label for="email"><b>Box Office Collection:</b></label>
   	</td><td><input type="text"  placeholder="Total Collection in Rs." name="collection" value="<%=rs.getInt(5)  %>"></td></tr>
   	
   	 <tr><td><label for="email"><b>Director:</b></label>
        </td><td><input type="text"  placeholder="Enter Director Name" name="director" value="<%=rs.getString(6)  %>"></td></tr>
   
     <tr><td><label for="email"><b>Movie Ratings:</b></label>
		</td><td><input type="text"  placeholder="Enter Ratings" name="ratings" value="<%=rs.getInt(9) %>"></td></tr>
		
		 <tr><td><label for="email"><b>Movie Cast:</b></label>
        </td><td> <input type="text"  placeholder="Enter Cast Name" name="mcast" value="<%=rs.getString(7) %>"></td></tr>
      
       <tr><td><label for="email"><b>Role of Actor:</b></label>
     </td><td> <input type="text"  placeholder="Role" name="arole" value="<%=rs.getString(8) %>"></td></tr>
    	
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

