<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Homepage(Approval Pending)</title>
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
	font-size:15px; 
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
<style type="text/css">
ul.tab
{
	
	
	list-style-type: none;
	width: 100%;
	padding: 20px 10px 2px 0px;
	font-weight: bold;
	position: relative;
	height: 30px;
	margin: 0;
	border-bottom: 2px solid;
	border-bottom-color: teal;
	box-radius:5px;
}
ul.tab li 
{
	
	
	
	display: block;
	float: right;
	background: White;
	color: black;
	line-height: 30px;
	margin: 0 0 0 5px;
	border: 2px solid teal;
	border-radius : 3px;
	
	
	
}

ul.tab li.current
{
	border: 2px solid teal;
	border-bottom:2px solid white;
	padding: 0 15px 0 15px;
}
ul.tab li a.right 
{
	padding:0 15px 0 15px;
	
	margin: 2;
	
}

ul.tab li a
{
	
	display: block;
	float: right;
	padding:0 10px 0 15px;
	background: black;
	color: white;
	line-height: 30px;
	text-decoration: none;
	
	
}
ul.tab li a:HOVER
{
	background: white;
	color: teal;
}


</style>

<style type="text/css">
div.list
{

border: 2px solid teal;
border-radius:20px;
height: 450px;
width: 300px;

text-align:center;
box-shadow:0px 0px 10px  black;
}

ul.box
{
display: block;
list-style-position:inherit;
list-style:none;

width: 225px;


border-radius:10px;
}
ul.box li a
{
	
	display:block;
	font-weight: bold;
	background:teal;
	color: white;
	text-decoration: none;
	padding:30px 0;
	
	margin:  0 0 30px 0;
	border-radius:10px;
	box-shadow: 0px 0px 10px black,0px 0px 10px black;
	
	font-size: large;
	
}
ul.box li a:HOVER
{
	background: white;
	color: teal;

}
</style>

</head>

<% 

String user=(String)session.getAttribute("id");
if(session.getAttribute("id")==null )
{
	
	session.setAttribute("msg","Please Login ");
	response.sendRedirect("Login.jsp");
}

%>
<body background="images/background-wallpapers-34.jpg">
<div id = "header">
      
      <p id = "name"> M O N E T A</p>
      
</div>
<div style="color:white ;background-color:Black;border-radius:20px;" >

<center><h1>Customer Home Page</h1></center>
</div>

<marquee style="font-weight: bolder;color: black;">Hello <%=session.getAttribute("id") %>! Welcome to MONETA BANK</marquee>
<div  style="height:50px; padding:0 0 0 5px; background-image:images/background-wallpapers-34.jpg " >
<ul class="tab">
<li class="right"><a href="contactus.jsp">Contact Us</a></li>
<li class="current">Customer</li>
<li><a href="Aboutus.jsp">About Us</a></li>

</ul>
</div>

	<br>
	<DIV style="float: right;">
	<form action="BaseController<%session.setAttribute("Formname","Logout"); %>" > 
	<input type="submit"  value="Log Out" class="button">
	 </form>
	</DIV>
<div>
	<center>
	
	<h2>Your Account has not been verified yet. Please wait for the approval.</h2>
	</center>
</div>


<footer><center>Copyright @Moneta</center></footer>
</body>
</html>