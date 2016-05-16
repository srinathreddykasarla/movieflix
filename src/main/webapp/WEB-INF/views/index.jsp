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
	<link rel="stylesheet" href="<c:url value="resources/index/style.css" />">
</head>
<body>
	<table style="margin-top:2%; margin-left:2%;margin-bottom:2%; width:90%;">
	<tr>
	<td>
	<div class = "h1">
	<a href="/" class="icon-logoUpdate nfLogo signupBasicHeader" >
	<span class="screen-reader-text">MOVIEFLIX</span></a>
	</div>
	</td>
	<td>
	<section class="button cf" >
	<form action="signin" method="GET">
	<input type="submit" value="Sign In"/>
	</form>
	</section>
	</td>
	</table>
	<div><section class="loginform cf" >
		<table>
		<tr>
		<td ><h2>See what's next.</h2></td>
		</tr>
		<tr>
		<td><h3>Watch anywhere, anyTime, anyPlace</h3></td>
		</tr>
		<tr>
		<td><form action="signup" method="GET"><input type="submit" value="Click Here Join Movieflix"/></form></td>
		</tr>
		</table>
	</section></div>
</body>
</html>