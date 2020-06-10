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
  height:60%;
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
   height:100%;
 align:center;
}
</style>
</head>

<body>

    <form method="post" action="InsertReviewer.jsp">
  
      <h1>Reviewer Details</h1>
     
      <hr>
      <table>
       <tr><td><b>Reviewer Id:</b></td>
     	<td><input type="text"  placeholder="Enter Reviwer Id" name="rid"></td></tr>
       
        <tr><td><label for="email"><b>Reviewer Name:</b></label></td>
     	<td><input type="text"  placeholder="Enter Reviewer Name" name="rname"></td></tr>
 
 		<tr><td>
	    <label for="email"><b>Email:</b></label></td>
     	<td><input type="email"  placeholder="Enter Email" name="remail"></td></tr>
     	
		
    	
      
       
         <tr><td><center> <button type="submit">Submit</button></center></td>
       <td> <center><button type="button">Cancel</center></button>
       </td></tr></TABLE>
    
    <p><a href="showreviewer.jsp">View-All-Records</a></p>
  </form>
  
</body>
</html>
