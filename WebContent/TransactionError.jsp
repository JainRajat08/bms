<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Transaction Fail</title>
<style>
#header
{
height:12.5%;
width:100%;
background: -webkit-linear-gradient(left, rgba(44,44,44,1) 0%, rgba(17,17,17,1) 8%, rgba(65,65,65,1) 16%, rgba(89,89,89,1) 20%, rgba(102,102,102,1) 23%, rgba(87,87,87,1) 24%, rgba(0,0,0,1) 30%, rgba(71,71,71,1) 50%, rgba(28,28,28,1) 58%, rgba(31,31,31,1) 62%, rgba(43,43,43,1) 80%, rgba(76,76,76,1) 86%, rgba(19,19,19,1) 92%);
background: -moz-linear-gradient(left, rgba(44,44,44,1) 0%, rgba(17,17,17,1) 8%, rgba(65,65,65,1) 16%, rgba(89,89,89,1) 20%, rgba(102,102,102,1) 23%, rgba(87,87,87,1) 24%, rgba(0,0,0,1) 30%, rgba(71,71,71,1) 50%, rgba(28,28,28,1) 58%, rgba(31,31,31,1) 62%, rgba(43,43,43,1) 80%, rgba(76,76,76,1) 86%, rgba(19,19,19,1) 92%);
background: -webkit-gradient(left top, right top, color-stop(0%, rgba(44,44,44,1)), color-stop(8%, rgba(17,17,17,1)), color-stop(16%, rgba(65,65,65,1)), color-stop(20%, rgba(89,89,89,1)), color-stop(23%, rgba(102,102,102,1)), color-stop(24%, rgba(87,87,87,1)), color-stop(30%, rgba(0,0,0,1)), color-stop(50%, rgba(71,71,71,1)), color-stop(58%, rgba(28,28,28,1)), color-stop(62%, rgba(31,31,31,1)), color-stop(80%, rgba(43,43,43,1)), color-stop(86%, rgba(76,76,76,1)), color-stop(92%, rgba(19,19,19,1)));
!border-bottom-left-radius:10px;
!border-bottom-right-radius:10px;
box-shadow: rgba(0,0,0,0.2)10px 10px;
z-index:10%;
}
#name
{   
    position:relative;
      width:50%;
      margin-left:5%;
      font-family:Segoe ui;
      !padding:20%;
      font-weight:lighter;
      font-size:60px;
      font-size: 4.0vw;
      
      !color:-webkit-gradient(left top, right top, color-stop(5%, rgba(255,255,255,1)), color-stop(12%, rgba(252,252,252,1)), color-stop(28%, rgba(246,246,246,1)), color-stop(71%, rgba(240,240,240,1)), color-stop(89%, rgba(237,237,237,1)));
            color:white;
    z-index:2%;
      !background-color: rgba(0, 0, 0, 0.1);
      
}
</style>
<style type="text/css">
.button
{
	font-family:monospace;
	font-size:25px; 
	border-radius:40px;
	padding:6px 15px; 
	text-decoration:blink; 
	 background-color:teal; 
	 color:white;
	 text-shadow: 3px 2px 5px black;
	 text-align:center;
	  box-shadow:3px 2px 5px gray;
	
}


</style>
</head>
<body>
</head>
<body background="images/background-wallpapers-34.jpg">
<div id = "header">
      
      <p id = "name"> M O N E T A</p>
      
</div>
<div style="color:white ;background-color:Black;border-radius:20px;" >

<center><h1>Transaction FAILED</h1></center>
</div>
<%
out.print("<br><div align='left'><b>Sorry!!</b></div>");
out.print("<br><div align='left'><b>Your transaction have failed at Cognizant Bank</b></div>");
out.print("<div align='center' style='colour:red'><font size='3'><b>Please Try Again!!<br><br><br>");
%>
<form action="CustomerHomePage.jsp">
<center> <input type="submit" value="Home" class="button"></center> 
</form>
</body>
</html>