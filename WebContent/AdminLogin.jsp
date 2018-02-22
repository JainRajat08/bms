<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login</title>
<style>
      
check{

        margin:100px 50px;
	padding: 0;
	background: #fff;
	color: #fff;
	font-family: Arial;
	font-size: 12px;
}

.check{
	position: absolute;
	top: 170px;
	left: 400px;
	right: 400px;
	bottom: 400px;
	width: 550px;
	height: 300px;
	background-image: url(images/city-skyline-wallpapers-009.jpg);
	background-size: cover;
	-webkit-filter: blur(7px);
	z-index: 0;
}

.grad{
	position: absolute;
	width: auto;
	height: auto;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(0,0,0,0)), color-stop(100%,rgba(0,0,0,0.65))); 
	z-index: 1;
	opacity: 0.7;
}

.header{
	position: absolute;
	top: calc(50% - 35px);
	left: calc(50% - 255px);
	z-index: 2;
}

.header div{
	float: left;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 35px;
	font-weight: 200;
}

.header div span{
	color: #5379fa !important;
}

.login{
	position: absolute;
	top: calc(50% - 75px);
	left: calc(50% - 50px);
	height: 150px;
	width: 350px;
	padding: 10px;
	z-index: 2;
}

.login input[type=text]{
	width: 250px;
	height: 30px;
	background: transparent;
	border: 1px solid rgba(100,100,100,0.6);
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
}

.login input[type=password]{
	width: 250px;
	height: 30px;
	background: transparent;
	border: 1px solid rgba(255,255,255,0.6);
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
	margin-top: 10px;
}

.login input[type=submit]{
	width: 260px;
	height: 35px;
	background: #fff;
	border: 1px solid #fff;
	cursor: pointer;
	border-radius: 2px;
	color: #a18d6c;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 6px;
	margin-top: 10px;
}

.login input[type=submit]:hover{
	opacity: 0.8;
}

.login input[type=submit]:active{
	opacity: 0.6;
}

.login input[type=text]:focus{
	outline: none;
	border: 1px solid rgba(255,255,255,0.9);
}

.login input[type=password]:focus{
	outline: none;
	border: 1px solid rgba(255,255,255,0.9);
}

.login input[type=submit]:focus{
	outline: none;
}

::-webkit-input-placeholder{
   color: rgba(255,255,255,0.6);
}

::-moz-input-placeholder{
   color: rgba(255,255,255,0.6);
}
    </style>

</head>
<% 
/* session.invalidate(); */

//State stores session type(custoer/amin)
if(session.getAttribute("state")!=null  && ((String)session.getAttribute("state")).equals("admin")){
	
	session.setAttribute("Formname","LoginState");
	response.sendRedirect("BaseController");
}
/* else if(session.getAttribute("state")!=null)
{
	response.sendRedirect("HomePage.jsp");
} */
else if(request.getParameter("submit")!=null && session.getAttribute("state")==null )
{
	
	if(request.getParameter("submit").equals("Login"))
	{
		session.setAttribute("id",request.getParameter("id"));
		session.setAttribute("pass",request.getParameter("pass"));
		session.setAttribute("Formname","AdminLogin");
		response.sendRedirect("BaseController");
		
	}
	
}
else if(request.getParameter("submit")!=null && session.getAttribute("state")!=null)
{
	response.sendRedirect("ErrorServlet");
}


%>
<body>
<%if(session.getAttribute("msg")!=null)
{
	out.print(session.getAttribute("msg"));
} %>
<img src='images/city-skyline-wallpapers-008.jpg' style='position:fixed;top:0px;left:0px;width:100%;height:100%;z-index:-1;'>
    <div class="check"></div>
		<div class="grad"></div>
		<div class="header">
			<div><span>LOGIN</span></div>
		</div>
		<br>
		<div class="login">
		<form>
				<input type="text" placeholder="username" name="id" autocomplete="off"><br>
				<input type="password" placeholder="password" name="pass"><br>
				<input type="submit" name="submit" value="Login">
				</form>
		</div>
    
    
    
</body>
</html>