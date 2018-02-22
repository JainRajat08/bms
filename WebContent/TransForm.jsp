<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.text.SimpleDateFormat"%>
    <%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<title>Loan</title>
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7; IE=EmulateIE9">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="css/formstyle.css" media="all" />
    <link rel="stylesheet" type="text/css" href="css/formdemo.css" media="all" />
   <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
</head>
<body>
<div class="container">
<div class="web-top">
<a href="CustomerHomePage.jsp"><strong>Home</strong></a>

<div class="clr"></div>
</div>
<header>
<h1>Transaction Details</h1>
</header>  
<div  class="form">     
<form name="transaction" action="TransactionBean.jsp" method="post">
<p class="contact"><label>Customer ID</label></p> 
<input id="cid" name="custId" required tabindex="1" type="text" readOnly value=<%=session.getAttribute("cus_id") %> autocomplete="off">
<p class="contact"><label>Account Holder Name</label></p> 
<input id="cid" name="accHolder" required tabindex="1" type="text" readOnly value="<%=session.getAttribute("fname")%> <%=session.getAttribute("lname")%>" autocomplete="off"> 
<p class="contact"><label>Transaction Date</label></p> 
<input id="cid" name="transDate" required tabindex="1" type="text" readOnly value=<%Date d=new Date();
SimpleDateFormat sdf=new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
String dat=sdf.format(d);%><%=dat%> autocomplete="off">
<p class="contact"><label>Username</label></p> 
<input id="cid" name="userName" required tabindex="1" type="text" readOnly value=<%=session.getAttribute("uname")%> autocomplete="off">
<p class="contact"><label>Money to be transferred</label></p> 
<input id="moneyid" name="money" required tabindex="1" type="number" onBlur="less();">
<p class="contact"><label>Re-enter the Money</label></p> 
<input id="moneyid1" name="money11" required tabindex="1" type="number" onBlur="diff();">
<p class="contact"><label>Transaction Type:</label></p>
<select class="select-style"  name="transactiontype1" id="transactiontype" onClick="set()">
<option  value="Deposit">Deposit</option>
<option  value="Withdrawal">Withdrawal</option>
<option  value="EMI">Loan EMI Debit </option>
<option  value="Fund">Fund Transfer</option>
</select><br><br>
<div id = "fund" style = "width:70%;height:40%;display:block;">
<p class="contact"><label>Recipient Account Number</label></p> 
<input id="accno" name="accno" placeholder="Account number" tabindex="1" type="text" autocomplete="off"> 
</div>
<p class="contact">
<input id="rembal" name="rembal" placeholder="Remaining Balance" readonly="readonly" required tabindex="1" type="text" autocomplete="off"></p> 
<p><input class="buttom" name="Submit" tabindex="5" value="Submit" type="submit" onClick="ttype_check()"></p>
<%session.setAttribute("Formname", "Transaction"); %>
<script>
	function less()
	{
		if(isNaN(document.getElementById("moneyid").value)||document.getElementById("moneyid").value==0||document.getElementById("moneyid").value<0)
			{alert("Please enter the valid amount!!!");
			location.reload();
			}

		}
	function ttype_check()
	{
		
	var z=document.getElementById("moneyid1").value;
		if(document.getElementById("transactiontype").value=="Deposit")
			{
			var x=<%=session.getAttribute("custbal")%>
			var y=<%=session.getAttribute("initbal")  %>
			//alert(x);
	
			x=parseInt(x);
			z=parseInt(z);
			var t=x+z;
			document.getElementById("rembal").value=t;
		
			}
		else if(document.getElementById("transactiontype").value=="Withdrawal"||document.getElementById("transactiontype").value=="EMI"||document.getElementById("transactiontype").value=="Fund")
			{
			
			var x=<%=session.getAttribute("custbal")%>
			var y=<%=session.getAttribute("initbal")%>
		
			if(x<0||x==0||document.getElementById("moneyid").value>x)
				{
				alert("Insufficient or Invalid Amount!!!");
				}
			else if ((x-y) < z)
				{
				alert("Remaining Balance is less than Account Opening Balance.Cannot Withdraw!!!");
				}
			else if((x-y) >= z) 
				{
				var t=x-z;
				document.getElementById("rembal").value=t;
				alert(document.getElementById("rembal").value);
				<%session.setAttribute("rem",request.getParameter("rembal"));%>
				}
			} 
	
	}
	function diff() {

		var x = document.getElementById("moneyid").value;
		var y = document.getElementById("moneyid1").value;
		if (x !== y) {
			alert("Please check the amount and try again!!! ");
			document.getElementById("moneyid").value = "";
			document.getElementById("moneyid1").value="";
			}
	}
	
	function set()
	{
		if(document.transaction.transactiontype1.value=="Fund")
		{
			$(document).ready(function(){
				$("#fund").show(function()
				{ 
				
				});
			});
		}
		else
		{
			$(document).ready(function(){
				$("#fund").hide(function()
				{ 
				
				});
			});
		document.getElementById("accno").value="";
		}
	}
		
	window.history.forward(1);
	function noBack(){
	window.history.forward();
	}
</script>
</html>
