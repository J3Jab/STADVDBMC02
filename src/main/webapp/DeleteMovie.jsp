<%@page import = "STADVDB.*, java.util.*"%>
<%@page import = "java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="http://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
        <title>Delete Movie</title>
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
            Movie movie = new movie();
            ResultSet set =  movie.getMovie();
            String movie_ID = new String();
            
            if (request.getParameter("submit") != null) {
                
                if (request.getParameter("movie_ID") != null) {
                    movie_ID = request.getParameter("movie_ID");
                }
                
                result = movie.deleteMovies(movie_ID);
            }
        %>
		<form name="myForm" action="DeleteMovie.jsp" method="POST">
			<div>
				<h1>DELETE MOVIE</h1>
				<label for="movie_ID">Movie ID</label>
				<input type="text" id="movie_ID" name="movie_ID" value="" />
				<input type="submit" value="Submit" name="submit" />
				<input type="hidden" name="hidden" value="<%= result%>" />
				<a href="mainmenu.html">Back</a>
			</div>
		</form>
	</center>
    </body>
            <SCRIPT LANGUAGE ="JAVASCRIPT">
                <!-- 
                    function displayResults()
                    {
                        if(document.myForm.hidden.value == 1) {
                            alert("Data Deleted");
                        }
                    }
                -->
            </SCRIPT>
</html>
