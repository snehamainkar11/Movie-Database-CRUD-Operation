<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Movie Database Demo</title>
<style>
body{
background-image: url(C:\Users\Htc\eclipse-workspace\MovieDB\s2.jpg")

}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover {
  background-color: #111;
}
</style>
</head>
<body>

<ul>
  <li><a href="Reviewer.jsp">Add Reviewer</a></li>
   <li><a href="showreviewer.jsp">View Reviewer</a></li>
  <li><a href="MovieData.jsp">Add Movie</a></li>
  <li><a href="ShowMovie.jsp">View Movie</a></li>
 
</ul>

<img src="C:/Users/Htc/eclipse-workspace/MovieDB/s1.jpg" width="70%" height="60%">
</body>
</html>
