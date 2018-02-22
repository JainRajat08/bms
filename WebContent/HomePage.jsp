<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Moneta Bank</title>
<link rel="stylesheet" href="css/home_style.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<link rel="stylesheet" type="text/css" href="css/component.css" />
<script src="js/modernizr.custom.25376.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<%
String s=(String)session.getAttribute("id");
if(s==null)
{
	s="Guest";
}

%>
<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
<div id = "header">
	
	<p id = "name"> M O N E T A</p>
	
</div>
<p><button id="showMenu" style="width:50%;margin-left:60%;margin-top:-90px;z-index:50;
background:transparent;font-family:Segoe ui light;font-size:20px;font-size: 2.2vw;">Menu</button></p>
<marquee style="color: teal; font-weight: bolder; font-size: medium;">Welcome to Moneta Bank <font color="Red"> <%=s %> </font> </marquee>
<div id="perspective" class="perspective effect-airbnb" style="background:url(images/bg1.jpg);">
	<div class="container">
		<div class="wrapper"><!-- wrapper needed for scroll -->
			<!-- ... -->
		
			<div id = "maincontent">
				<div id  = "menunav">
				</div>
			
				<div id="slider">
					<figure>
					
						<img src="images/3.jpg" alt="">
						<img src="images/1.jpg" alt="">
						<img src="images/4.jpg" alt="">
						<img src="images/5.jpg" alt="">
						
						
						
					</figure>
				</div>
				
				    
				<div id="newsdiv">
					<div id = "firstdiv">
							<img src="images/n5.jpg" width= "100%" height="80%">
							<div id = "shadow">
							<a class="button_example" href="#" style="margin-top:-15px;" >Read More</a>
								<p style="font-family:Segoe ui;color:black;margin-top:-3px;">Exports fell for the 14th consecutive months</p></div>
								        
					</div>
					
					<div id = "seconddiv">
							<img src="images/n6.jpg" width= "100%" height="80%">
							<div id = "shadow"> 
							     <a class="button_example" href="#" style="margin-top:-15px;" >Read More</a>
								<p style="font-family:Segoe ui;color:black;">Sensex and NIFTY near 25 weeks low</p>
								
							
							</div>
							
					</div>
					<div id = "thirddiv">
							<img src="images/n3.jpg" width= "100%" height="80%">
							<div id = "shadow"> 
							    <a class="button_example" href="#" style="margin-top:-15px;" >Read More</a>
								<p style="font-family:Segoe ui;color:black;">RBI maintains satus quo</p></div>
					</div>
	
				</div>

				<!-- Footer -->

			<footer id="footer">

				<div class="inner">

				<ul class="icons">

					<li><a href="https://www.facebook.com/" class="icon fa-facebook">
<span class="label">Facebook</span></a></li>

						<li><a href="https://twitter.com/?lang=en" class="icon fa-twitter">

							<span class="label">Twitter</span>

						</a></li>

						<li><a href="https://www.instagram.com/" class="icon fa-instagram">

							<span class="label">Instagram</span>

						</a></li>

						<li><a href="https://in.linkedin.com/" class="icon fa-linkedin">

							<span class="label">LinkedIn</span>

						</a></li>

				</ul>

				<ul class="copyright">

						<li>&copy; Moneta<br>SWATI || RAJAT || GYAN || ANMOL || CHINMOYEE || ABHINAV </li>

					
					</ul>

				</div>
		
			</footer>
				


			</div>
	

	</div><!-- wrapper -->	
</div><!-- /container -->
	
	<nav class="outer-nav left vertical">
				<a href="#" class="icon-home">Home</a>
				
				<% 
if(session.getAttribute("state")==null || ((String)session.getAttribute("state")).equals("admin"))
{
out.print("<a href=\"AdminLogin.jsp\" class=\"icon-lock\">Admin</a>");
}
else
{
	out.print("<a href=\"LogOutServlet\" class=\"icon-lock\">Log Out</a>");	
}

%>

<%
if(session.getAttribute("state")==null || ((String)session.getAttribute("state")).equals("customer"))
{
out.print("<a href=\"Login.jsp\" class=\"icon-star\">Customer</a>");
}
else
{
	out.print("<a href=\"LogOutServlet\" class='icon-star'>Log Out</a>");	
}
%>
				
				
				
				<a href="contactus.jsp" class="icon-image">Contact Us</a>
				<a href="Aboutus.jsp" class="icon-star">About Us</a>
				
	</nav>
 
	
	
	
</div><!-- /perspective -->

<script src="js/classie.js"></script>
<script src="js/menu.js"></script>
</body>

</html>