<%@page import="java.util.StringTokenizer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.cts.BNK.dao.GeneralDao,com.cts.BNK.dao.UpdateCustinfoDao,com.cts.BNK.model.Registration"%>
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
<%
UpdateCustinfoDao ob=new UpdateCustinfoDao();
Registration ob1=new Registration();
String cus_id=(String)session.getAttribute("cus_id");
ob1=ob.extract(cus_id);
StringTokenizer dob=new StringTokenizer(ob1.getDob()," ");
String dob1=dob.nextToken();
StringTokenizer reg=new StringTokenizer(ob1.getRegdate()," ");
String reg1=reg.nextToken();

%>
<div class="container">
<div class="web-top">
<a href="CustomerHomePage.jsp"><strong>Home</strong></a>
<div class="clr"></div>
</div>
<header>
<h1>Update Details</h1>
</header>  
<div  class="form">     
<form name="Welcome" id="welcome" action="BaseController" method="post">
<p class="contact"><label><font color="red">*</font>Cannot be Changed</label></p>
<p class="contact"><label>Customer ID<font color="red">*</font></label></p> 
<input id="custid" name="custid" value="<%=session.getAttribute("cus_id")%>" readonly="readonly" required tabindex="1" type="text">

<p class="contact"><label>First Name<font color="red">*</font></label></p> 
<input id="fname" name="fname" value="<%=ob1.getFname()%>" readonly="readonly" required tabindex="1" type="text"> 

<p class="contact"><label>Last Name<font color="red">*</font></label></p> 
<input id="lname" name="lname" value="<%=ob1.getLname()%>" readonly="readonly" required tabindex="1" type="text"> 

<p class="contact"><label>Account Number<font color="red">*</font></label></p> 
<input id="accno" name="accno" value="<%=session.getAttribute("accnum") %>" readonly="readonly" required tabindex="1" type="text"> 

<p class="contact"><label>Country<font color="red">*</font></label></p> 
<input id="country" name="country" value="<%=ob1.getCountry() %>" readonly="readonly" required tabindex="1" type="text"> 

<p class="contact"><label>State<font color="red">*</font></label></p> 
<input id="state" name="state" value="<%=ob1.getState() %>" readonly="readonly" required tabindex="1" type="text"> 

<p class="contact"><label>Gender<font color="red">*</font></label></p> 
<input id="gender" name="gender" value="<%=ob1.getGender() %>" readonly="readonly" required tabindex="1" type="text"> 

<p class="contact"><label>DOB<font color="red">*</font></label></p> 
<input id="dob" name="dob" value="<%=dob1 %>" readonly="readonly" required tabindex="1" type="text"> 

<p class="contact"><label>Registration Date<font color="red">*</font></label></p> 
<input id="regdate" name="regdate" value="<%=reg1 %>" readonly="readonly" required tabindex="1" type="text"> 

<p class="contact"><label>Bank Name<font color="red">*</font></label></p> 
<input id="bank" name="bank" value="Moneta Bank" readonly="readonly" required tabindex="1" type="text"> 

<p class="contact"><label>Branch Name<font color="red">*</font></label></p> 
<input id="branch" name="branch" value="<%=ob1.getBranch() %>" readonly="readonly" required tabindex="1" type="text"> 

<p class="contact"><label>IFSC code<font color="red">*</font></label></p> 
<input id="ifsc" name="ifsc" value="<%=ob1.getIfsc1() %>" readonly="readonly" required tabindex="1" type="text"> 

<p class="contact"><label>Identification Proof Type</label></p>
<select class="select-style"  name="idtype">
<%if(ob1.getIdtype().equals("DL")) { %>
<option value="DL" selected="selected">Driving License</option>
<option value="Passport">Passport</option>
<option value="Aadhar">Aadhar Card</option>
<option value="PRC" >Permanent Residential Certificate</option>
</select>
<%} %>
<%if(ob1.getIdtype().equals("Passport")) {%>
<option value="DL" >Driving License</option>
<option value="Passport" selected="selected">Passport</option>
<option value="Aadhar">Aadhar Card</option>
<option value="PRC" >Permanent Residential Certificate</option>
</select>
<%} %>

<%if(ob1.getIdtype().equals("Aadhar")) {%>
<option value="DL" >Driving License</option>
<option value="Passport" >Passport</option>
<option value="Aadhar" selected="selected">Aadhar Card</option>
<option value="PRC" >Permanent Residential Certificate</option>
</select>
<%} %>

<%if(ob1.getIdtype().equals("PRC")) {%>
<option value="DL" >Driving License</option>
<option value="Passport" >Passport</option>
<option value="Aadhar" >Aadhar Card</option>
<option value="PRC" selected="selected">Permanent Residential Certificate</option>
</select>
<%} %>
<br><br>

<p class="contact"><label>Identification Document Number</label></p> 
<input type="text" name="idno" required tabindex="1" value="<%=ob1.getIdno()%>" autocomplete="off"> 

<p class="contact"><label>Reference Account Holder Name</label></p> 
<input type="text" name="refname" placeholder="Name" required tabindex="1" value="<%=ob1.getRefname()%>" onkeyup="AllowAlphabet()" autocomplete="off"> 

<p class="contact"><label>Reference Account Holder Number</label></p> 
<input type="text" name="refaccno" placeholder="Account Number" required tabindex="1" value="<%=ob1.getRefaccno()%>" autocomplete="off"> 

<p class="contact"><label>Reference Account Holder Address</label></p> 
<textarea name="refacadd" rows="5" cols="57" placeholder="Permanent Address" tabindex="1" ><%=ob1.getRefacadd()%></textarea><br><br>

<p class="contact"><label>Address<font color="red">*</font></label></p> 
<textarea name="address" rows="5" cols="57" readonly="readonly" tabindex="1" ><%=ob1.getAddress() %></textarea><br><br>

<p class="contact"><label>Alternate Address</label></p> 
<textarea name="altaddress" rows="5" cols="57" placeholder="Alternate Address" tabindex="1" ><%=ob1.getAltaddress() %></textarea><br><br>

<p class="contact"><label>Contact Number</label></p> 
<input name="contactno" id="cno"  placeholder="Enter 10 digit Contact number" value="<%=ob1.getContactno() %>" required tabindex="1" type="text" onblur="checkno()" autocomplete="off"> 

<p class="contact"><label>Alternate Contact Number</label></p> 
<input name="altcontactno" id="altcno"  placeholder="Enter 10 digit Alternate Contact number" value="<%=ob1.getAltcontactno() %>" required tabindex="1" type="text" onblur="checkno()" autocomplete="off"> 

<p class="contact"><label>Email Address</label></p> 
<input name="email" id="emailid" value="<%=ob1.getEmail() %>" placeholder="email id" required tabindex="1" type="text" onChange="emailValidator()" autocomplete="off"><span id="ok"></span> 

<p class="contact"><label>Marital Status</label></p>
<select class="select-style"  name="marital">
<%if(ob1.getMarital().equals("Married")) { %>
<option value="Married" selected="selected">Married</option>
<option value="Unmarried">Unmarried</option>
</select>
<%} %>
<%if(ob1.getMarital().equals("Unmarried")) {%>
<option value="Married" >Married</option>
<option value="Unmarried" selected="selected">Unmarried</option>
</select>
<%} %>
<br><br>

<p class="contact"><label>Account Type<font color="red">*</font></label></p> 
<input id="acctype" name="acctype" value="<%=ob1.getActype() %>" readonly="readonly" required tabindex="1" type="text"> 

<p class="contact"><label>Citizenship<font color="red">*</font></label></p> 
<input id="citizen" name="citizen" value="<%=ob1.getCitizenship()%>" readonly="readonly" required tabindex="1" type="text"> 

<p class="contact"><label>Citizen Status<font color="red">*</font></label></p> 
<input id="cstatus" name="cstatus" value="<%=ob1.getCitizenstatus()%>" readonly="readonly" required tabindex="1" type="text"> 

<p class="contact"><label>Guardian Type</label></p>
<select class="select-style"  name="guardiantype" >
<%if(ob1.getGuardiantype().equals("Father")) { %>
<option value="Father" selected="selected">Father</option>
<option value="Husband">Husband</option>
<option value="Mother">Mother</option>
</select>
<%} %>
<%if(ob1.getGuardiantype().equals("Husband")) {%>
<option value="Father" >Father</option>
<option value="Husband" selected="selected">Husband</option>
<option value="Mother">Mother</option>
</select>
<%} %>

<%if(ob1.getGuardiantype().equals("Mother")) {%>
<option value="Father" >Father</option>
<option value="Husband" >Husband</option>
<option value="Mother" selected="selected">Mother</option>
</select>
<%} %><br><br>

<p class="contact"><label>Guardian Name</label></p> 
<input id="guardianname" name="guardianname" value="<%=ob1.getGuardianname()%>" placeholder="Guardian name" required tabindex="1" type="text" onkeyup="AllowAlphabet()" autocomplete="off"> 

<input class="buttom" name="submit" id="submit" tabindex="5" value="Update Details" type="submit">
<input class="buttom" name="Reset" id="submit" tabindex="5" value="Restore" type="button" onClick="res()">
<%
session.setAttribute("Formname1","Updateinfo");
%>
</form>
</div>      
</div>

</body>

</html>