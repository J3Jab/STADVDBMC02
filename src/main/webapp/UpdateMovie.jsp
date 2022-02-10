<%@page import = "STADVDB.*, java.util.*"%>
<%@page import = "java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="http://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
        <title>Update Movie</title>
		<style>
			body {
				font-family: 'Poppins', sans-serif;
				background: #191919;
			}
			
			label {
				color: white; 
			}
		
			input[type=text] {
			  width: 100%;
			  padding: 12px 20px;
			  margin: 8px 0;
			  display: inline-block;
			  border: 1px solid #ccc;
			  border-radius: 4px;
			  box-sizing: border-box;
			  text-align: center;
			}

			input[type=submit] {
			  width: 100%;
			  background-color: #4CAF50;
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
			
			
			h1 {
				color: white;
				letter-spacing: 5px;
			}
		</style>
    </head>
    <body onload="displayResults()">
	<center>
		<%
            int result = 0;
			Movie movie = new Movie();
            ResultSet set =  movie.getMovie();
            int movie_ID = request.getParameter("movie_ID");
			String movie_name = new String();
			int year;
			float rank;
            
            if (request.getParameter("submit") != null) {
                
                if (request.getParameter("movie_ID") != null) {
                    movie_ID = request.getParameter("movie_ID");
                }
				if(request.getParameter("movie_name") != null) {
                    movie_name = request.getParameter("movie_name");
                }
                
                if(request.getParameter("year") != null) {
                    year = request.getParameter("year");
                }
                    
                if(request.getParameter("rank") != null){
                   rank = request.getParameter("rank");
                }
                
                result = movie.updateMovies(movie_ID,movie_name,year,rank);
            }
        %>
        <form name="myForm" action="UpdateMovie.jsp" method="POST">
			<div>
				<h1>UPDATE MOVIE</h1>
				<%while (set.next())
					if(set.getString("movie_ID") == movie_ID) {%>
				<label for="movie_ID">Movie ID</label>
				<input type="text" id="movie_ID" name="movie_ID" value="" />
				<label for="movie_name">Movie Title</label>
				<input type="text" id="movie_name" name="movie_name" value="<%= set.getString("movie_name")%>" />
				<label for="year">Year Released</label>
				<input type="text" id="year" name="year" value="<%= set.getString("year")%>" />
				<label for="rank">Movie Ranking</label>
				<input type="text" id="rank" name="rank" value="<%= set.getString("rank")%>" />
				<% } %>
				<input type="submit" value="Submit" name="submit" />
				<a href="mainmenu.html">Back</a><br><br>
				<a href="UpdateMovie.jsp">Refresh</a>
				<input type="hidden" name="hidden" value="<%= result%>" />
			</div>
        </form>
	<center>
    </body>
            <SCRIPT LANGUAGE ="JAVASCRIPT">
                <!--
                    function displayResults()
                    {
                        if(document.myForm.hidden.value == 1) {
                            alert("Data Updated");
                        }
                    }
                -->
            </SCRIPT>
</html>
