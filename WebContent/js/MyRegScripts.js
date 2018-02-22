/**
 * 
 */
function checkpan()
{
	var length=Welcome.pan.value.length;
	if (length!=10)
		{
		Welcome.pan.value="";
		alert("Please Enter a valid Pan Card Number");
		}
	}
function roi()
{
	if(document.getElementById("cs1").value=="Normal")
		{
		document.getElementById("irt").value="10";
		}
	else if(document.getElementById("cs1").value=="Senior")
		{
		document.getElementById("irt").value="15";
		}
	
	}
function checkno()
{
	var x=document.getElementById("cno").value;
	var length=document.getElementById("cno").value.length;
	if (isNaN(x) || length!=10)
		{
		Welcome.contactno.value="";
		alert("Please Enter a valid Contact Number");
		}
}
function checkage()
{
	var age=document.getElementById("ddd").value;
if(age<18 || age>96)
	{
	document.getElementById("welcome").reset();
	document.getElementById("msg").innerHTML="";
	document.getElementById("ok").innerHTML="";
	alert("Only Customers having age greater than or equal to 18 years and smaller than or equal to 96 years are allowed to open account");
	}
}
function emailValidator(){
var emailvalid = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/; 
if(document.getElementById("emailid").value.match(emailvalid)) 
{ 
document.getElementById("ok").innerHTML="<font color=green>&#x2714</font>";
}
else{ 
document.getElementById("ok").innerHTML="<font color=red>&#x2716</font>";
} 
}
function AllowAlphabet(){
if (!Welcome.fname.value.match(/^[a-zA-Z]+$/) && Welcome.fname.value !="")
{
Welcome.fname.value="";
Welcome.fname.focus();
alert("Please Enter only alphabets in text");
}
}
function AllowAlphabet1(){
if (!Welcome.lname.value.match(/^[a-zA-Z]+$/) && Welcome.lname.value !="")
{
Welcome.lname.value="";
Welcome.lname.focus();
alert("Please Enter only alphabets in text");
}
}
function res()
{
document.getElementById("welcome").reset();
document.getElementById("msg").innerHTML="";
document.getElementById("ok").innerHTML="";
}
function putifsc()
{
if(document.Welcome.branch.value=="Chennai")
{
document.getElementById("ifsc").value="";
document.getElementById("ifsc").value="CHEN0012";
}
else if(document.getElementById("b").value=="Coimbatore")
{
document.getElementById("ifsc").value="";
document.getElementById("ifsc").value="COIM0013";
}
else if(document.getElementById("b").value=="Madurai")
{
document.getElementById("ifsc").value="";
document.getElementById("ifsc").value="MADU0003";
}
else if(document.getElementById("b").value=="Alapuzha")
{
document.getElementById("ifsc").value="";
document.getElementById("ifsc").value="ALAP0001";
}
else if(document.getElementById("b").value=="Trivandrum")
{
document.getElementById("ifsc").value="";
document.getElementById("ifsc").value="TRIV0011";
}
else if(document.getElementById("b").value=="Cochin")
{
document.getElementById("ifsc").value="";
document.getElementById("ifsc").value="COCH0111";
}
else if(document.getElementById("b").value=="Bengaluru")
{
document.getElementById("ifsc").value="";
document.getElementById("ifsc").value="BENG0211";
}
else if(document.getElementById("b").value=="Mangalore")
{
document.getElementById("ifsc").value="";
document.getElementById("ifsc").value="MANG0010";
}
else if(document.getElementById("b").value=="Madras")
{
document.getElementById("ifsc").value="";
document.getElementById("ifsc").value="MADR0090";
}
else if(document.getElementById("b").value=="Vishakapatnam")
{
document.getElementById("ifsc").value="";
document.getElementById("ifsc").value="VISH2011";
}
else if(document.getElementById("b").value=="Vijayawada")
{
document.getElementById("ifsc").value="";
document.getElementById("ifsc").value="VIJA0093";
}
else if(document.getElementById("b").value=="Guntur")
{
document.getElementById("ifsc").value="";
document.getElementById("ifsc").value="GUNT0561";
}
else if(document.getElementById("b").value=="Newark")
{
document.getElementById("ifsc").value="";
document.getElementById("ifsc").value="NEWA0100";
}
else if(document.getElementById("b").value=="Jersey City")
{
document.getElementById("ifsc").value="";
document.getElementById("ifsc").value="JERS3011";
}
else if(document.getElementById("b").value=="Paterson")
{
document.getElementById("ifsc").value="";
document.getElementById("ifsc").value="PATE0221";
}
else if(document.getElementById("b").value=="Aberdeen")
{
document.getElementById("ifsc").value="";
document.getElementById("ifsc").value="ABER0987";
}
else if(document.getElementById("b").value=="Glasgow")
{
document.getElementById("ifsc").value="";
document.getElementById("ifsc").value="GLAS4411";
}
else if(document.getElementById("b").value=="Dundee")
{
document.getElementById("ifsc").value="";
document.getElementById("ifsc").value="DUND0034";
}
else if(document.getElementById("b").value=="Rome")
{
document.getElementById("ifsc").value="";
document.getElementById("ifsc").value="ROME3411";
}
 
}
function cs()
{
var c=document.getElementById("ddd").value;
if(document.getElementById("ddd").value>18 && document.getElementById("ddd").value<=60)
{
document.getElementById("cs1").value="";
document.getElementById("cs1").value="Normal";
}
else if(document.getElementById("ddd").value>60)
{
document.getElementById("cs1").value="";
document.getElementById("cs1").value="Senior";
}
}
function branchname()
{
if(document.Welcome.country.value=="India")
{
if(document.Welcome.state.value=="Tamil Nadu")
{
var myobject = {
   ValueA : 'Chennai',
   ValueB : 'Coimbatore',
   ValueC : 'Madurai'
};

var select = document.getElementById("b");
select.options.length=0;
for(index in myobject) {
   select.options[select.options.length] = new Option(myobject[index], myobject[index]);
}
}
else if(document.Welcome.state.value=="Kerela")
{
var myobject = {
   ValueA : 'Alapuzha',
   ValueB : 'Trivandrum',
   ValueC : 'Cochin'
};

var select = document.getElementById("b");
select.options.length=0;
for(index in myobject) {
   select.options[select.options.length] = new Option(myobject[index], myobject[index]);
}
}
else if(document.Welcome.state.value=="Karnataka")
{
var myobject = {
   ValueA : 'Bengaluru',
   ValueB : 'Mangalore',
   ValueC : 'Madras'
};

var select = document.getElementById("b");
select.options.length=0;
for(index in myobject) {
   select.options[select.options.length] = new Option(myobject[index], myobject[index]);
}
}
else if(document.Welcome.state.value=="Andhra Pradesh")
{
var myobject = {
   ValueA : 'Vishakapatnam',
   ValueB : 'Vijayawada',
   ValueC : 'Guntur'
};

var select = document.getElementById("b");
select.options.length=0;
for(index in myobject) {
   select.options[select.options.length] = new Option(myobject[index], myobject[index]);
}
 
}
}
else if(document.Welcome.country.value=="United States of America")
{
var myobject = {
   ValueA : 'Newark',
   ValueB : 'Jersey City',
   ValueC : 'Paterson'
};

var select = document.getElementById("b");
select.options.length=0;
for(index in myobject) {
   select.options[select.options.length] = new Option(myobject[index], myobject[index]);
}
 
}
else if(document.Welcome.country.value=="United Kingdom")
{
var myobject = {
   ValueA : 'Aberdeen',
   ValueB : 'Glasgow',
   ValueC : 'Dundee'
};

var select = document.getElementById("b");
select.options.length=0;
for(index in myobject) {
   select.options[select.options.length] = new Option(myobject[index], myobject[index]);
}
 
}
else if(document.Welcome.country.value=="Italy"){

var select = document.getElementById("b");
select.options.length=0;
for(index in myobject) {
   select.options[select.options.length] = new Option('Rome','Rome');
}
 
}
}
function dep()
{
if(document.Welcome.actype.value=="Savings")
{
if(document.Welcome.country.value=="India")
{
document.Welcome.ida.value="";
document.Welcome.ida.value="5000";
}
else if(document.Welcome.country.value=="United States of America")
{
document.Welcome.ida.value="";
document.Welcome.ida.value="15000";
}
else if(document.Welcome.country.value=="United Kingdom")
{
document.Welcome.ida.value="";
document.Welcome.ida.value="14000";
}
else if(document.Welcome.country.value=="Italy")
{
document.Welcome.ida.value="";
document.Welcome.ida.value="13000";
}
 
}
else if(document.Welcome.actype.value=="Salary")
{
document.Welcome.ida.value="";
document.Welcome.ida.value="0";
}
}
function set()
{
var date = new Date().toISOString().substring(0, 10),
    field = document.querySelector('#date');
field.value = date;
console.log(field.value);
}
function countrypop()
{
if(document.Welcome.citizenship.value=="NRI")
{
var myobject = {
   ValueA : 'United States of America',
   ValueB : 'United Kingdom'
  
};

var select = document.getElementById("c");
select.options.length=0;
for(index in myobject) {
   select.options[select.options.length] = new Option(myobject[index], myobject[index]);
}
}
else if(document.Welcome.citizenship.value=="Indian")
{
var select = document.getElementById("c");
select.options.length=0;
select.options[select.options.length] = new Option('India','India');
}
}
function statepop()
{
if(document.Welcome.country.value=="India")
{
var myobject = {
   ValueA : 'Tamil Nadu',
   ValueB : 'Kerela',
   ValueC : 'Karnataka',
   ValueD : 'Andhra Pradesh'
};

var select = document.getElementById("s");
select.options.length=0;
for(index in myobject) {
   select.options[select.options.length] = new Option(myobject[index], myobject[index]);
}
}
else if(document.Welcome.country.value=="United States of America")
{
var select = document.getElementById("s");
select.options.length=0;
select.options[select.options.length] = new Option('New Jersey', 'New Jersey');
}
else if(document.Welcome.country.value=="United Kingdom")
{
var select = document.getElementById("s");
select.options.length=0;
select.options[select.options.length] = new Option('Scotland', 'Scotland');
}
else if(document.Welcome.country.value=="Italy")
{
var select = document.getElementById("s");
select.options.length=0;
select.options[select.options.length] = new Option('Rome', 'Rome');
}
}
function cid()
{
if(document.Welcome.country.value=="India")
{
if(document.Welcome.state.value=="Tamil Nadu")
{
Welcome.countryid.value="C01";
}
else if(document.Welcome.state.value=="Kerela")
{
Welcome.countryid.value="C02";
}
else if(document.Welcome.state.value=="Karnataka")
{
Welcome.countryid.value="C03";
}
else if(document.Welcome.state.value=="Andhra Pradesh")
{
Welcome.countryid.value="C04";
}
}
else if (document.Welcome.country.value=="United States of America")
{
Welcome.countryid.value="C05";
}
else if (document.Welcome.country.value=="United Kingdom")
{
Welcome.countryid.value="C06";
}
else if (document.Welcome.country.value=="Italy")
{
Welcome.countryid.value="C07";
 
}
}
function checkMe()
{
if(document.Welcome.pass.value==document.Welcome.repass.value)
{
document.getElementById("msg").innerHTML="<font color=green>&#x2714</font>";
}
else
{
document.getElementById("msg").innerHTML="<font color=red>&#x2716</font>";
}
}
function myage()
{
var today = new Date();
   var birthDate = new Date(document.getElementById("dob1").value);
   var age = today.getFullYear() - birthDate.getFullYear();
   var m = today.getMonth() - birthDate.getMonth();
   if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
       age--;
   }
    if(age<18 || age>96)
	{
	document.getElementById("welcome").reset();
	document.getElementById("msg").innerHTML="";
	document.getElementById("ok").innerHTML="";
	alert("Only Customers having age greater than or equal to 18 years and smaller than or equal to 96 years are allowed to open account");
	}
    else
    	  document.getElementById('ddd').value = age;
    	}
