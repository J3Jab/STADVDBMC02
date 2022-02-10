<%@page import = "STADVDB.*, java.util.*"%>
<%@page import = "java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="http://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
        <title>Search Movie Record</title>
		<style>
			body {
				font-family: 'Poppins', sans-serif;
				background: #191919;
			}
			
			input[type=text] {
			  width: 100%;
			  padding: 12px 20px;
			  margin: 8px 0;
			  display: inline-block;
			  border: 1px solid #ccc;
			  border-radius: 4px;
			  box-sizing: border-box;
			}
			
			input[type=submit] {
			  width: 30%;
			  background-color: #4CAF50;
			  color: white;
			  padding: 14px 20px;
			  margin: 8px 0;
			  border: none;
			  border-radius: 4px;
			  cursor: pointer;
			  font-family: 'Poppins', sans-serif;
			}
			
			input[type=reset] {
			  width: 30%;
			  background-color: red;
			  color: white;
			  padding: 14px 20px;
			  margin: 8px 0;
			  border: none;
			  border-radius: 4px;
			  cursor: pointer;
			  font-family: 'Poppins', sans-serif;
			}

			input[type=submit]:hover {
			  background-color: #45a049;
			}
			
			input[type=reset]:hover {
			  background-color: #D70040;
			}
			
			table, td, th {  
			  border: 5px solid #ddd;
			  text-align: left;
			  color: white;
			}

			table {
			  border-collapse: collapse;
			  width: 70%;
			}

			th, td {
			  padding: 15px;
			}
			
			
			h1 {
				color: white;
				letter-spacing: 5px;
			}
			
			div {
			  width: 300px;
			  padding: 10px 40px;
			  position: absolute;
			  top: 50%;
			  left: 50%;
			  transform: translate(-50%, -50%);
			  border-radius: 5px;
			  background-color: #595959;
			  padding: 20px;
			}
		</style>
    </head>
    <body>
	<center>
        <%
			Movie movie = new Movie();
            ResultSet result = movie.getMovies();
        %>
        <form name="myForm" action="ShowMovies.jsp" method="POST">
		<div>
			<h1>SEARCH MOVIE</h1>
            <input type="text" id="movie_name" name="movie_name" placeholder="Search.." size="50" value="" />     
            <input type="reset" value="Clear" name="clear" />
            <input type="submit" value="Submit" name="submit" />
			<br><br><a href="mainmenu.html">Back</a>
		</div>
        </form>
	</center>
    </body>
</html>
