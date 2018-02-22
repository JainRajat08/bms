<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.cts.BNK.dao.GeneralDao"%>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7; IE=EmulateIE9">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="css/formstyle.css" media="all" />
    <link rel="stylesheet" type="text/css" href="css/formdemo.css" media="all" />
<script src="js/MyRegScripts.js">

</script>

</head>
<body>
<div class="container">
<div class="web-top">
<a href="HomePage.jsp"><strong>Home</strong></a>
<span class="right">
<a href="Login.jsp">
<strong>Go to Login Page</strong>
</a>
</span>
<div class="clr"></div>
</div>
<header>
<h1><span>Welcome</span> Register Here</h1>
</header>  
<div  class="form">     
<form name="Welcome" id="welcome" action="regsucceed.jsp" method="post">

<p class="contact"><label>First Name</label></p> 
<input id="fname" name="fname" placeholder="First name" required tabindex="1" type="text" onkeyup="AllowAlphabet()" autocomplete="off"> 

<p class="contact"><label>Last Name</label></p> 
<input id="lname" name="lname" placeholder="Last name" required tabindex="1" type="text" onkeyup="AllowAlphabet1()" autocomplete="off"> 

<p class="contact"><label>User Name</label></p> 
<input id="username" name="username" placeholder="User name" required tabindex="1" type="text" autocomplete="off"> 

<p class="contact"><label>Password</label></p> 
<input id="pass" name="pass" placeholder="Password" required tabindex="1" type="password" autocomplete="off"> 

<p class="contact"><label>Re-Type Password</label></p> 
<input id="repass" name="repass" placeholder="Password" required tabindex="1" type="password" autocomplete="off" onChange="checkMe()"><span id="msg"></span>

<p class="contact"><label>Guardian Type</label></p>
<select class="select-style"  name="guardiantype" >
<option value="Father">Father</option>
<option value="Husband">Husband</option>
<option value="Mother">Mother</option>
</select><br><br>

<p class="contact"><label>Guardian Name</label></p> 
<input id="guardianname" name="guardianname" placeholder="Guardian name" required tabindex="1" type="text" onkeyup="AllowAlphabet()" autocomplete="off"> 

<p class="contact"><label>Address</label></p> 
<textarea name="address" rows="5" cols="57" placeholder="Permanent Address" tabindex="1" ></textarea><br><br>

<p class="contact"><label>Alternate Address</label></p> 
<textarea name="altaddress" rows="5" cols="57" placeholder="Alternate Address" tabindex="1" ></textarea><br><br>

<p class="contact"><label>Citizenship</label></p>
<select class="select-style"  name="citizenship" onClick="countrypop()">
<option value="Indian">Indian</option>
<option value="NRI">NRI</option>
</select><br><br>

<p class="contact"><label>Country</label></p>
<select class="select-style"  name="country" id="c" onClick="statepop()">
</select><br><br>

<p class="contact"><label>State</label></p>
<select class="select-style"  name="state" id="s">
</select><br><br>

<p class="contact"><label>Country ID</label></p> 
<input id="countryid" name="countryid" placeholder="Auto-Filled" required tabindex="1" type="text" onClick="cid()" autocomplete="off"> 

<p class="contact"><label>Email Address</label></p> 
<input name="email" id="emailid"  placeholder="email id" required tabindex="1" type="text" onChange="emailValidator()" autocomplete="off"><span id="ok"></span> 

<p class="contact"><label>Gender</label></p>
<select class="select-style"  name="gender">
<option value="Male">Male</option>
<option value="Female">Female</option>
<option value="transgender">Transgender</option>
</select><br><br>

<p class="contact"><label>Marital Status</label></p>
<select class="select-style"  name="marital">
<option value="Married">Married</option>
<option value="Unmarried">Unmarried</option>
</select><br><br>

<p class="contact"><label>Contact Number</label></p> 
<input name="contactno" id="cno"  placeholder="Enter 10 digit Contact number" required tabindex="1" type="text" onblur="checkno()" autocomplete="off"> 

<p class="contact"><label>Alternate Contact Number</label></p> 
<input name="altcontactno" id="altcno"  placeholder="Enter 10 digit Alternate Contact number" required tabindex="1" type="text" onblur="checkno()" autocomplete="off"> 

<p class="contact"><label>Registration Date</label></p> 
<input id="date" name="regdate" type="date" onClick="set()" required tabindex="1" autocomplete="off"> 

<p class="contact"><label>Date of Birth</label></p> 
<input name="dob" id="dob1"  type="date" onChange="myage()" required tabindex="1" autocomplete="off"> 

<p class="contact"><label>Age</label></p> 
<input type="text" name="age" id="ddd" onChange="myage()" required tabindex="1" autocomplete="off"> 

<p class="contact"><label>Citizen Status</label></p> 
<input type="text" name="citizenstatus" id="cs1" onClick="cs()" required tabindex="1" autocomplete="off"> 

<p class="contact"><label>Account Type</label></p>
<select class="select-style"  name="actype" onClick="dep()">
<option value="Savings">Savings</option>
<option value="Salary">Salary</option>
</select><br><br>

<p class="contact"><label>Initial Deposit Amount (INR)</label></p> 
<input type="text" name="ida" onClick="branchname()" required tabindex="1" autocomplete="off"> 

<p class="contact"><label>Interest Rate(in %)</label></p> 
<input type="text" name="interest" id="irt" onClick="roi()" required tabindex="1" autocomplete="off"> 

<p class="contact"><label>Branch Name</label></p>
<select class="select-style"  name="branch" id="b">
</select><br><br>

<p class="contact"><label>IFSC Code</label></p> 
<input type="text" name="ifsc1" id="ifsc" onClick="putifsc()" required tabindex="1" autocomplete="off"> 

<p class="contact"><label>Pan Card Number</label></p> 
<input type="text" name="pan" onblur="checkpan()" required tabindex="1" autocomplete="off"> 

<p class="contact"><label>Identification Proof Type</label></p>
<select class="select-style"  name="idtype">
<option value="DL">Driving License</option>
<option value="Passport">Passport</option>
<option value="Aadhar">Aadhar Card</option>
<option value="PRC">Permanent Residential Certificate</option>
</select><br><br>

<p class="contact"><label>Identification Document Number</label></p> 
<input type="text" name="idno" required tabindex="1" autocomplete="off"> 

<p class="contact"><label>Reference Account Holder Name</label></p> 
<input type="text" name="refname" required tabindex="1" autocomplete="off"> 

<p class="contact"><label>Reference Account Holder Number</label></p> 
<input type="text" name="refaccno" required tabindex="1" autocomplete="off"> 

<p class="contact"><label>Reference Account Holder Address</label></p> 
<textarea name="refacadd" rows="5" cols="57" placeholder="Permanent Address" tabindex="1" ></textarea><br><br>

<input class="buttom" name="submit" id="submit" tabindex="5" value="Register" type="submit">
<input class="buttom" name="Reset" id="submit" tabindex="5" value="Reset" type="button" onClick="res()">


</form>
</div>      
</div>
<%
session.setAttribute("Formname","Registration");
%>

</body>

</html>