<%@page import = "STADVDB.*, java.util.*"%>
<%@page import = "java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="http://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
        <title>Display Movies</title>
		<style>
			body {
				font-family: 'Poppins', sans-serif;
				background: #191919;
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
		</style>
    </head>
    <body>
	<center>
        <h1>DISPLAY MOVIES</h1>
        <%
            Movie movie = new Movie();
            ResultSet result = movie.getMovies();
        %>
        <table>
            <tbody>
                <tr>
					<td><b>Movie ID</td>
                    <td><b>Movie Name</td>
                    <td><b>Year</td>
                </tr>
                <% while (result.next()){ %>
                <tr>
					<td><%= result.getString("movie_ID")%></td>
                    <td><%= result.getString("movie_name")%></td>
                    <td><%= result.getString("year")%></td>
                </tr>
                <% } %>
            </tbody>
        </table>
             <br><a href="mainmenu.html">Back</a>
	<center>
    </body>
</html>
