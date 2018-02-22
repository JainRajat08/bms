<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.cts.BNK.model.*,java.util.Date" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bank Statement</title>
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
<body background="images/background-wallpapers-34.jpg" onLoad="pop()">
<div id = "header">
      
      <p id = "name"> M O N E T A</p>
      
</div>
<div style="color:white ;background-color:Black;border-radius:20px;" >

<center><h1>BANK STATEMENT GENERATION</h1></center>
</div>

<form name="bankstatement" action="BankStatementmid.jsp" method="post">
<table style="width:100%">
<tr><td>Customer_Id:</td>
<td><input type="text" name="custid"  id="cid" value=<%=session.getAttribute("cus_id") %> readonly="readonly"></td>
</tr>
<tr>
<td>Account Number:</td>
<td><input type="text" name="accnumber"  id="acn" value=<%=session.getAttribute("accnum")%> readonly="readonly"></td>
</tr>
<tr>
<td>From Date:</td>
<td>
<input type="date" name="fromdate" id="from" onChange="less()">
</td>
</tr>
<tr>
<td>To Date:</td>
<td>
<input type="date" name="todate" id="to" onChange="diff()">
</td>
</tr>
<tr><td>Transactions Type:</td>
<td><select name="transactiontype"><option value="Deposit">Deposit</option><option value="Withdrawal">Withdrawal</option><option value="Both">Both</option></select>
</td></tr>
<tr>
<td>
Number of pages:
</td>
<td><select name="number"><option value="5">5</option><option value="10">10</option><option value="20">20</option></select>
</td></tr>
</table><br><br><br>
<center><input type="submit" name="submit" value="View" class="button"></center>

<%
session.setAttribute("Formname","BankStatementmodule");
%>
</form>
</body>
<script>

	function pop()
	{
	var k="<%=request.getParameter("cid")%>";
	if(k=='haha')
		{
		alert("Enter the date lesser than the To date");
		}
	}
	function less()
	{
		var today = new Date();
		   var from = new Date(document.getElementById("from").value);
		   if(from>today)
			   {
			   alert("type date less than system date.");
		   document.getElementById("from").value="";
			   }
		}
	function diff()
	{
		var today = new Date();
		   var from = new Date(document.getElementById("from").value);
		   var to = new Date(document.getElementById("to").value);
		   if(from>to)
			{
		   alert("from should not be greater than to");
		   document.getElementById("from").value="";
		   document.getElementById("to").value="";
			}
		   else if(to>today)
			   {
		alert("to should not be greater than system date");
		 document.getElementById("from").value="";
		   document.getElementById("to").value="";
			   }
	}

</script>
</html>