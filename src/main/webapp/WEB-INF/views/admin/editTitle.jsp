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
	<form name="login" action="editTitle" method="post">
		<table>
		<tr>
		<td colspan="2" align="left"><div><h2 class="title">Edit Title</h2></div></td></tr>
			<tr>
			<td>Enter The Attribute and New Value you want to edit</td>
			</tr>
			<tr>
			<td><input type="text" placeholder="Attribute Name" name="attName" ></td>
			</tr>
			<tr>
			<td><input type="text" placeholder="Attribute Value" name="attVal" ></td>
			</tr>
			
			<tr>
			<td>Enter The Imdb ID</td>
			</tr>
			<tr>
			<td><input type="text" placeholder="Imdb ID" name="imdbId" ></td>
			</tr>
			<tr>
			<td><input type="submit" name="submit" value="Update"/></td>
			<tr>
			<td>to Go back! <a href="adminlogin">Go Back</a></td>
			</tr>
		</table>
	</form>
	</section></div>
</body>
</html>