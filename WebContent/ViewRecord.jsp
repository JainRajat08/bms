<%@ page import="com.cts.BNK.model.Registration,com.cts.BNK.model.Model"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Record</title>
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

<style>
input[type="submit"]
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
</head>

<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="" background="images/background-wallpapers-34.jpg">
<div id = "header">
      
      <p id = "name"> M O N E T A</p>
      
</div>
<div style="color:white ;background-color:Black;border-radius:20px;" >

<center><h1>RECORD DETAILS</h1></center>
</div>
<%
	if(request.getParameter("Button")!=null)
	{
		String j="";
		if(request.getParameter("Button").equals("Approve Customer"))
		{
			 j="ApproveNewCust";

		}
		else if(request.getParameter("Button").equals("Reject Customer"))
		{
			j="RejectNewCust";
		}
		session.setAttribute("Formname",j);
		response.sendRedirect("BaseController");
	}
%>


<form >
<table style="width:75%">
<%
        Model newlist=(Model)session.getAttribute("listobj");
        Registration record=(Registration)newlist;
    	out.print("<tr><td><b>Customer ID:</b></td><td>"+session.getAttribute("c_id")+"</td></tr>");
    	out.print("<tr><td><b>First Name:</b></td><td>"+record.getFname()+"</td></tr>");
    	out.print("<tr><td><b>Last Name:</b></td><td>"+record.getLname()+"</td></tr>");
    	out.print("<tr><td><b>User Name:</b></td><td>"+record.getUsername()+"</td></tr>");
    	out.print("<tr><td><b>Password:</b></td><td>"+record.getPass()+"</td></tr>");
    	out.print("<tr><td><b>Guardian Type:</b></td><td>"+record.getGuardiantype()+"</td></tr>");
    	out.print("<tr><td><b>Guardian Name:</b></td><td>"+record.getGuardianname()+"</td></tr>");
    	out.print("<tr><td><b>Address:</b></td><td>"+record.getAddress()+"</td></tr>");
    	out.print("<tr><td><b>Alternate Address:</b></td><td>"+record.getAltaddress()+"</td></tr>");
    	out.print("<tr><td><b>Citizenship:</b></td><td>"+record.getCitizenship()+"</td></tr>");
    	out.print("<tr><td><b>Country:</b></td><td>"+record.getCountry()+"</td></tr>");
    	out.print("<tr><td><b>State:</b></td><td>"+record.getState()+"</td></tr>");
    	out.print("<tr><td><b>Country ID:</b></td><td>"+record.getCountryid()+"</td></tr>");
    	out.print("<tr><td><b>Email:</b></td><td>"+record.getEmail()+"</td></tr>");
    	out.print("<tr><td><b>Gender:</b></td><td>"+record.getGender()+"</td></tr>");
    	out.print("<tr><td><b>Marital Status:</b></td><td>"+record.getMarital()+"</td></tr>");
    	out.print("<tr><td><b>Contact Number:</b></td><td>"+record.getContactno()+"</td></tr>");
    	out.print("<tr><td><b>Alternate Contact Number:</b></td><td>"+record.getAltcontactno()+"</td></tr>");
    	out.print("<tr><td><b>Date Of Birth:</b></td><td>"+record.getDob()+"</td></tr>");
    	out.print("<tr><td><b>Account Type:</b></td><td>"+record.getActype()+"</td></tr>");
    	out.print("<tr><td><b>Interest Rate:</b></td><td>"+record.getInterest()+"</td></tr>");
    	out.print("<tr><td><b>Initial Deposit Amount:</b></td><td>"+record.getIda()+"</td></tr>");
    	out.print("<tr><td><b>Customer Balance:</b></td><td>"+record.getIda()+"</td></tr>");
    	out.print("<tr><td><b>Branch Name:</b></td><td>"+record.getBranch()+"</td></tr>");
    	out.print("<tr><td><b>IFSC:</b></td><td>"+record.getIfsc1()+"</td></tr>");
    	out.print("<tr><td><b>Citizen Status:</b></td><td>"+record.getCitizenstatus()+"</td></tr>");
    	out.print("<tr><td><b>Pan Number:</b></td><td>"+record.getPan()+"</td></tr>");
    	out.print("<tr><td><b>Id Type:</b></td><td>"+record.getIdtype()+"</td></tr>");
    	out.print("<tr><td><b>Id Number:</b></td><td>"+record.getIdno()+"</td></tr>");
    	out.print("<tr><td><b>Reference Account Holder Name:</b></td><td>"+record.getRefname()+"</td></tr>");
    	out.print("<tr><td><b>Reference Account Holder Account Number:</b></td><td>"+record.getRefaccno()+"</td></tr>");
    	out.print("<tr><td><b>Reference Account Holder Address:</b></td><td>"+record.getRefacadd()+"</td></tr>");   	
%>
<tr><td><input type="submit" name="Button" value="Approve Customer"  ></td><td><input type="submit" name="Button" value="Reject Customer" ></td></tr>
</table>
</form>
</body>

<script>
window.history.forward(1);
function noBack(){
window.history.forward();
}
</script>

</html>