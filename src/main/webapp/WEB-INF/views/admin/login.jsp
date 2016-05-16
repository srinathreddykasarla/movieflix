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
	<div><section class="loginform cf" >
	<form name="login" action="adminlogin" method="post">
		<table>
		<tr>
		<td colspan="2" align="left"><div><h2 class="title">Admin Sign In</h2></div></td></tr>
			<tr>
			<td>User ID</td>
			</tr>
			<tr>
			<td><input type="text" placeholder="User ID" name="userid" ></td>
			</tr>
			<tr>
			<td>Password</td><tr>
			<tr><td><input type="password" placeholder="Password" name="password" ></td></tr>
			<tr>
			<td colspan="2" align="center">	<input type="submit" name="submit" value="Login"/></td>
			</tr>
		</table>
	</form>
	</section></div>
</body>
</html>