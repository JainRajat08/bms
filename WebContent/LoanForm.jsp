<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<h1>Loan Form</h1>
</header>  
<div  class="form">     
<form action="LoanApply.jsp" name="applyloan" id="apl" method="post">

<p class="contact"><label>Loan Type</label></p>
<select class="select-style"  name="loantype" onChange="set()">
<option  value="Educational">Educational</option>
<option  value="Personal">Personal</option>
<option  value="Housing">Housing</option>
</select><br><br>

<p class="contact"><label>Username</label></p> 
<input id="uname" name="uname" required tabindex="1" type="text" autocomplete="off"> 


<p class="contact"><label>Loan Amount</label></p> 
<input id="prin" name="loanamt" placeholder="Amount" required tabindex="1" type="text" autocomplete="off"> 

<p class="contact"><label>Loan Apply Date</label></p> 
<input id="ad" name="aplydate" type="date" onClick="appdate()" required tabindex="1" autocomplete="off"> 

<p class="contact"><label>Loan Issue Date</label></p> 
<input id="isd" name="issdate" type="date" onClick="issuedate()" required tabindex="1" autocomplete="off"> 

<p class="contact"><label>Duration of Loan</label></p>
<select class="select-style"  name="duration" id="dur" onClick="emi()">
<option value="5">5 years</option>
<option  value="10">10 years</option>
<option  value="15">15 years</option>
<option  value="20">20  years</option>
</select><br><br>


<p class="contact"><label>Rate of Interest per annum(in %)</label></p> 
<input id="r" name="rate" required tabindex="1" type="text" autocomplete="off"> 

<p class="contact"><label>Your monthly payment will be</label></p> 
<input id="mpayment" name="payment" required tabindex="1" type="text" autocomplete="off"> 

<p class="contact"><label>Your total payment will be</label></p> 
<input id="tpayment" name="total" required tabindex="1" type="text" autocomplete="off"> 

<p class="contact"><label>Your total interest payments will be</label></p> 
<input type="text" id="ipayment" name="totalinterest"  required tabindex="1" autocomplete="off"> 


<div id = "education" style = "width:70%;height:40%;display:block;">
<p class="contact"><font size="3"><b>DETAILS FOR EDUCATIONAL  LOAN</b></font> 

<p class="contact"><label>Course Fee</label></p> 
<input id="cf" name="coursefee" placeholder="Course Fee"  tabindex="1" type="text" autocomplete="off" >

<p class="contact"><label>Course Name</label></p> 
<input id="cn" name="coursename" placeholder="Course Name"  tabindex="1" type="text" autocomplete="off" >


<p class="contact"><label>Father Name</label></p> 
<input id="fname" name="fathername" placeholder="Father name"  tabindex="1" type="text" autocomplete="off"> 

<p class="contact"><label>Father's Occupation</label></p> 
<input id="fo" name="fatheroccu" placeholder="Father's Occupation"  tabindex="1" type="text" autocomplete="off"> 

<p class="contact"><label>Father's Total Experience</label></p> 
<input id="fte" name="fathertexp" placeholder="Father's Total Experience"  tabindex="1" type="text" autocomplete="off"> 

<p class="contact"><label>Father's Experience with Current  Company</label></p> 
<input id="fce" name="fathercexp" placeholder="Father's Total Experience"  tabindex="1" type="text" autocomplete="off"> 

<p class="contact"><label>Ration Card Number</label></p> 
<input id="rno" name="ration" placeholder="Ration Card Number"  tabindex="1" type="text" autocomplete="off" >

<p class="contact"><label>Family Annual Income</label></p> 
<input id="ein" name="familyincome" placeholder="Family Annual Income"  tabindex="1" type="text" autocomplete="off" >

</div>


<div id = "personal" style = "width:70%;height:40%;display:none;">
<p class="contact"><font size="3"><b>DETAILS FOR PERSONAL/HOUSING LOAN</b></font> 

<p class="contact"><label>Annual Income</label></p> 
<input id="pin" name="income" placeholder="Annual Income"  tabindex="1" type="text" autocomplete="off" >

<p class="contact"><label>Company Name</label></p> 
<input id="com" name="company" placeholder="Company Name"  tabindex="1" type="text" autocomplete="off" >

<p class="contact"><label>Designation</label></p> 
<input id="dsg" name="desig" placeholder="Designation"  tabindex="1" type="text" autocomplete="off" >

<p class="contact"><label>Total Experience</label></p> 
<input id="te" name="texp" placeholder="Total Experience"  tabindex="1" type="text" autocomplete="off"> 

<p class="contact"><label>Experience with Current  Company</label></p> 
<input id="e" name="ccexp" placeholder="Total Experience"  tabindex="1" type="text" autocomplete="off">

<p class="contact"><label>Guarantor Name</label></p> 
<input id="gname" name="gname" placeholder="Guarantor Name"  tabindex="1" type="text" autocomplete="off">

<p class="contact"><label>Guarantor Address</label></p> 
<textarea name="gaddress" rows="5" cols="57" placeholder="Guarantor Address" tabindex="1" ></textarea><br><br>

<p class="contact"><label>Guarantor Income</label></p> 
<input id="gincome" name="gincome" placeholder="Guarantor Income"  tabindex="1" type="text" autocomplete="off">

 
 <br>
</div>
<input class="buttom" name="submit" id="submit" tabindex="5" value="Apply" type="submit">
<input class="buttom" name="Reset" tabindex="5" value="Reset" type="button" onClick="res()">
</form>
</div>      
</div>
<%
session.setAttribute("Formname","Loan");
%>

</body>

<script>
function emi()
{
    var principal = document.getElementById("prin").value;
    var interest = document.getElementById("r").value / 100 /  12;
    var payments = document.getElementById("dur").value * 12;
    var x = Math.pow(1 + interest, payments);
    var monthly = (principal*x*interest)/(x-1);
    if (!isNaN(monthly) && (monthly !=  Number.POSITIVE_INFINITY) &&(monthly !=  Number.NEGATIVE_INFINITY))
    {
    	document.applyloan.payment.value = round(monthly);
        document.applyloan.total.value = round(monthly *  payments);
        document.applyloan.totalinterest.value = 
            round((monthly * payments) - principal);
    }
    // Otherwise, the user's input was probably invalid, so  don't
    // display anything.
    else {
        document.applyloan.payment.value = "";
        document.applyloan.total.value = "";
        document.applyloan.totalinterest.value = "";
    }
}

// This simple method rounds a number to two decimal places.
function round(x) {
  return Math.round(x*100)/100;
}
function res()
{
	document.getElementById("apl").reset();
	}
function set()
{
	if(document.applyloan.loantype.value=="Educational")
	{
		$(document).ready(function(){
			$("#education").show(function()
			{ 
			$("#personal").hide();
			});
		});
	document.getElementById("r").value="9.33";
	document.getElementById("r").readOnly=true;
	document.getElementById("uname").value="<%=session.getAttribute("uname")%>";
	document.getElementById("uname").readOnly=true;
	document.getElementById("mpayment").readOnly=true;
	document.getElementById("tpayment").readOnly=true;
	document.getElementById("ipayment").readOnly=true;
	document.getElementById("pin").value="";
	document.getElementById("com").value="";
	document.getElementById("dsg").value="";
	document.getElementById("te").value="";
	document.getElementById("e").value="";
	document.getElementById("gname").value="";
	document.getElementById("gaddress").value="";
	document.getElementById("gincome").value="";
	}
else if(document.applyloan.loantype.value=="Personal")
	{
	$(document).ready(function(){
		$("#personal").show(function()
		{
		$("#education").hide();
		});
	});
	document.getElementById("r").value="12.99";
	document.getElementById("r").readOnly=true;
	document.getElementById("uname").value="<%=session.getAttribute("uname")%>";
	document.getElementById("uname").readOnly=true;
	document.getElementById("mpayment").readOnly=true;
	document.getElementById("tpayment").readOnly=true;
	document.getElementById("ipayment").readOnly=true;
	document.getElementById("cf").value="";
	document.getElementById("cn").value="";
	document.getElementById("fname").value="";
	document.getElementById("fo").value="";
	document.getElementById("fte").value="";
	document.getElementById("fce").value="";
	document.getElementById("rno").value="";
	document.getElementById("ein").value="";
	
	}
else if(document.applyloan.loantype.value=="Housing")
	{
	$(document).ready(function(){
		$("#personal").show(function()
		{
		$("#education").hide();
		});
	});
	document.getElementById("r").value="9.50";
	document.getElementById("r").readOnly=true;
	document.getElementById("uname").value="<%=session.getAttribute("uname")%>";
	document.getElementById("uname").readOnly=true;
	document.getElementById("mpayment").readOnly=true;
	document.getElementById("tpayment").readOnly=true;
	document.getElementById("ipayment").readOnly=true;
	document.getElementById("cf").value="";
	document.getElementById("cn").value="";
	document.getElementById("fname").value="";
	document.getElementById("fo").value="";
	document.getElementById("fte").value="";
	document.getElementById("fce").value="";
	document.getElementById("rno").value="";
	document.getElementById("ein").value="";
	}
}
function appdate()
{
	var date = new Date().toISOString().substring(0, 10),
    field = document.querySelector('#ad');
field.value = date;
console.log(field.value);
}
function issuedate()
{
	var date = new Date();
	date.setDate(date.getDate()+30);
	var newdate=date.toISOString().substring(0, 10);
    field = document.querySelector('#isd');
field.value = newdate;
console.log(field.value);
}
	
</script>

</html>
