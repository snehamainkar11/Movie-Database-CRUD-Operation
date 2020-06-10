<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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

<form class="modal-content" method="post"action="insertMovie.jsp">
   
      <h1>Movie Details</h1>
     
      <hr>
      <TABLE>
            <tr><td>
       <label for="email"><b>Movie Id:</b></label></td><td>
     	<input type="text"  placeholder="Enter Movie Id" name="mid"></td></tr>
      
      <tr><td><label for="email"><b>Movie Name:</b></label>
     	</td><td><input type="text"  placeholder="Enter Movie Name" name="mname"></td></tr>

	 <tr><td><label for="email"><b>Movie Genres:</b></label>
     	</td><td><input type="text"  placeholder="Enter Movie Genres" name="genres"></td></tr>
     	
		 <tr><td> <label for="email"><b>Movie Release year:</b></label>
		</td><td><input type="text"  placeholder="Movie Release Date" name="release"></td></tr>
		
		  <tr><td><label for="email"><b>Box Office Collection:</b></label>
    	</td><td><input type="text"  placeholder="Total Collection in Rs." name="collection"></td></tr>
    	
    	 <tr><td><label for="email"><b>Director:</b></label>
         </td><td><input type="text"  placeholder="Enter Director Name" name="director"></td></tr>
    	
    	  <tr><td><label for="email"><b>Movie Ratings:</b></label>
		</td><td><input type="text"  placeholder="Enter Ratings" name="ratings"></td></tr>
		
		 <tr><td><label for="email"><b>Movie Cast:</b></label>
        </td><td> <input type="text"  placeholder="Enter Cast Name" name="mcast"></td></tr>
      
       <tr><td><label for="email"><b>Role of Actor:</b></label>
     </td><td> <input type="text"  placeholder="Role" name="arole"></td></tr>
    	
     
        <div class="clearfix">
         <tr><td> <button type="submit">Submit</button>
       </td><td> <button type="button">Cancel</button>
       </td></tr>
    </table>
    <p><a href="ShowMovie.jsp">View-All-Records</a></p>
  </form>
  



</body>
</html>