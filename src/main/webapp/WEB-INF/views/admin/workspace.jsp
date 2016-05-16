<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html class="supports-svg" xmlns:fb="http://ogp.me/ns/fb#" ><head>
        <title>Movieflix</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta http-equiv="content-language" content="en" />
		<link rel="icon" type="image/png" href="<c:url value="resources/icon.png"/>" sizes="16x16">
		<link rel="stylesheet" href="<c:url value="resources/page/style.css" />">
        <link href="<c:url value="resources/page/home.css"/>" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="<c:url value="resources/page/drop.css" />">
        <script src="<c:url value="/resources/page/drop.js" />"></script>
        <link rel="stylesheet" href="<c:url value="resources/page/searchstyle.css"/>">
        </head>
        <body>      
        	<div class = "h1">
        	<table style="margin-top:2%; margin-left:8%;margin-bottom:2%; width:90%;">
        	<col align="left">
			<col align="left">
			<col align="right">
			<col align="right">      	
			<tr>
			<td><a href="browse" class="icon-logoUpdate nfLogo signupBasicHeader" >
			<span class="screen-reader-text">MOVIEFLIX</span></a></td>
			<td>
			<div class="dropdown">
			<button onclick="myFunction()" class="dropbtn">Browser</button>
			  <div id="myDropdown" class="dropdown-content">
			    <a href="addTitle">Add Title</a>
			    <a href="editTitle">Edit Title</a>
			    <a href="deleteTitle">Delete Title</a>
			  </div>
			</div>
			</td>
			<td>
			<div class="box">
			<form name="login" action="search" method="post">
				<div class="container-1">
					<span class="icon"><i class="fa fa-search"></i></span>
				    <input type="search" id="search" name="search" placeholder="Search..." />
				</div>
			</form>
			</div>
			</td>
			<td>
			<h2 class = "h2">Welcome : </h2>
			</td>
			<td>
			<div class="dropdown">
			<button onclick="myFunction1()" class="dropbtn">${admin.firstName}</button>
			  <div id="myDropdown1" class="dropdown-content">
			    <a href="manage">Manage Account</a>
			    <a href="help">Help Center</a>
			    <a href="adminlogout">Logout</a>
			  </div>
			</div>
			</td>
			</tr>
			<tr>
			<td>
				<table style="margin-top:2%; margin-left:8%;margin-bottom:2%; width:90%;">
					<tr>
					<td ><h2>Perform Actions.</h2></td>
					</tr>
					<tr>
					<td><form action="addTitle" method="GET"><input type="submit" value="Click Here Add a Title To Movieflix"/></form></td>
					</tr>
					<tr>
					<td><form action="editTitle" method="GET"><input type="submit" value="Click Here Edit a Title To Movieflix"/></form></td>
					</tr>
					<tr>
					<td><form action="deleteTitle" method="GET"><input type="submit" value="Click Here Delete a Title To Movieflix"/></form></td>
					</tr>
				</table>
				</td>
			</tr>
			</table>
			</div>  
			           
            <div class="container">
            <div>
            <div class="movieflix-front-list-listing movieflix-front-list-soon no-margin">
            </div>
            </div>
            <div class="movieflix-endpage"></div>
            </div>
            <div class="movieflix-footer" role="menubar">
            <div class="container">
            <div class="row-fluid">
            <div class="movieflix-footer-content-primary">
            <a href="" class="internal-home movieflix-footer-link">About</a>
            <a href="" class="internal-home movieflix-footer-link">Careers</a>
            <a href="" class="internal-home movieflix-footer-link">Team</a>
            <a href="" class="movieflix-footer-link">Store</a>
            <a href="" class="internal-home movieflix-footer-link">Contact</a>
            <a href="" class="internal-home movieflix-footer-link">Press</a>
            <a href="" class="internal-home movieflix-footer-link">Terms</a>
            <a href="" class="movieflix-footer-link">Help</a>
            </div><div class="movieflix-footer-content-secondary">
            <a target="_blank" href="" class="movieflix-footer-link">Google+</a>
            <a target="_blank" href="" class="movieflix-footer-link">Twitter</a>
            <a target="_blank" href="" class="movieflix-footer-link">Facebook</a>
            <a target="_blank" href="" class="movieflix-footer-link">Blog</a>
            </div></div></div></div>
            
</body>
</html>