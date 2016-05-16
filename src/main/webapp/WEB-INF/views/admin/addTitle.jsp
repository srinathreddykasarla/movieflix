<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
	<title>Movieflix</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta http-equiv="content-language" content="en" />
	<link rel="icon" type="image/png" href="<c:url value="resources/icon.png"/>" sizes="16x16">
	<title>Sign In</title>
	<link rel="stylesheet" href="<c:url value="resources/admin/style.css" />">
</head>
<body>
	<div class = "h1">
	<a href="/movieflix" class="icon-logoUpdate nfLogo signupBasicHeader" >
	<span class="screen-reader-text">MOVIEFLIX</span></a>
	</div>
	<div><section class="loginform cf" >
	<form name="login" action="addTitle" method="post">
		<table>
		<tr>
		<td colspan="2" align="left"><div><h2 class="title">Adding New Title</h2></div></td></tr>
			<tr>
			<td>Imdb ID</td>
			</tr>
			<tr>
			<td><input type="text" placeholder="Imdb ID" name="imdbId" ></td>
			</tr>
			
			<tr>
			<td>Actors</td>
			<tr>
			<tr>
			<td><input type="text" placeholder="Actors" name="actors" ></td>
			</tr>
			
			<tr>
			<td>awards</td>
			<tr>
			<tr>
			<td><input type="text" placeholder="awards" name="awards" ></td>
			</tr>
			
			<tr>
			<td>country</td>
			<tr>
			<tr>
			<td><input type="text" placeholder="country" name="country" ></td>
			</tr>
			
			<tr>
			<td>director</td>
			<tr>
			<tr>
			<td><input type="text" placeholder="director" name="director" ></td>
			</tr>
			
			<tr>
			<td>genre</td>
			<tr>
			<tr>
			<td><input type="text" placeholder="genre" name="genre" ></td>
			</tr>
			
			<tr>
			<td>language</td>
			<tr>
			<tr>
			<td><input type="text" placeholder="language" name="language" ></td>
			</tr>
			
			<tr>
			<td>metascore</td>
			<tr>
			<tr>
			<td><input type="text" placeholder="metascore" name="metascore" ></td>
			</tr>
			
			<tr>
			<td>plot</td>
			<tr>
			<tr>
			<td><input type="text" placeholder="plot" name="plot" ></td>
			</tr>
			
			<tr>
			<td>poster</td>
			<tr>
			<tr>
			<td><input type="text" placeholder="poster" name="poster" ></td>
			</tr>
			
			<tr>
			<td>rated</td>
			<tr>
			<tr>
			<td><input type="text" placeholder="rated" name="rated" ></td>
			</tr>
			
			<tr>
			<td>released</td>
			<tr>
			<tr>
			<td><input type="text" placeholder="released" name="released" ></td>
			</tr>
			
			<tr>
			<td>runtime</td>
			<tr>
			<tr>
			<td><input type="text" placeholder="runtime" name="runtime" ></td>
			</tr>
			
			<tr>
			<td>title</td>
			<tr>
			<tr>
			<td><input type="text" placeholder="title" name="title" ></td>
			</tr>
			
			<tr>
			<td>type</td>
			<tr>
			<tr>
			<td><input type="text" placeholder="type" name="type" ></td>
			</tr>
			
			<tr>
			<td>writer</td>
			<tr>
			<tr>
			<td><input type="text" placeholder="writer" name="writer" ></td>
			</tr>
					
			<tr>
			<td>year</td>
			<tr>
			<tr>
			<td><input type="text" placeholder="year" name="year" ></td>
			</tr>
			
			<tr>
			<td>imdbRating</td>
			<tr>
			<tr>
			<td><input type="text" placeholder="imdbRating" name="imdbRating" ></td>
			</tr>
			
			<tr>
			<td>imdbVotes</td>
			<tr>
			<tr>
			<td><input type="text" placeholder="imdbVotes" name="imdbVotes" ></td>
			</tr>	
			
			<tr>
			<td><input type="submit" name="submit" value="ADD"/></td>
			<tr>
			<td>to Go back! <a href="adminlogin">Go Back</a></td>
			</tr>
		</table>
	</form>
	</section></div>
</body>
</html>