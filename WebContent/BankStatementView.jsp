<%@page import="org.apache.catalina.connector.Request"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.cts.BNK.model.*,java.util.List,java.io.FileWriter,java.io.IOException;
    " %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BANK STATEMENT</title>
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
<body background="images/background-wallpapers-34.jpg" onLoad="check()">
<div id = "header">
      
      <p id = "name"> M O N E T A</p>
      
</div>
<div style="color:white ;background-color:Black;border-radius:20px;" >

<center><h1>BANK STATEMENT GENERATION</h1></center>
</div>
<form name="view" action="download.jsp" method="post">
<table border="5" style="width:100%;" bordercolor="black">
<tr><td><div align="center">Transaction Date</div></td><td><div align="center">Transaction Amount</div></td><td><div align="center">Transaction Type</div></td><td><div align="center">Transaction ID</div></td><td><div align="center">Account Balance</div></td></tr>
<%! private static int i=0; %>
<%
List<Model> model=(List<Model>)session.getAttribute("Liststate");
BNKstatement cname=(BNKstatement)session.getAttribute("stateobject");
%>
<%
String acc=null,fname=null,lname=null;
SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
BNKstatement bnkstm=(BNKstatement)session.getAttribute("stateobject");
Date d1=null;
int k3=Integer.parseInt(bnkstm.getNumber());
for(int j=0;j<Integer.parseInt(bnkstm.getNumber())&& i<model.size();j++)
{
	Model m=model.get(i);
	BankStatementGenerationModel e=(BankStatementGenerationModel)m;
	acc=e.getAccno();
	fname=e.getFname();
	lname=e.getLname();
	String d=e.getTransactionDate();
	d1=sdf.parse(d);
	out.print("<tr><td><div align='center'>"+sdf.format(d1)+"</div></td><td><div align='center'>"+e.getAmount()+"</div></td><td><div align='center'>"+e.getTransactiontype()+"</div></td><td><div align='center'>"+e.getTransactionId()+"</div></td><td><div align='center'>"+e.getAccountBalance()+"</div></td></tr>");
	i++;
}
session.setAttribute("acc",acc);
session.setAttribute("fname",fname);
session.setAttribute("lname",lname);
%>

<%! private static final String COMMA_DELIMITER=",";%>
<%!private static final String NEW_LINE_SEPARATOR = "\n";%>


<%! private static final String FILE_HEADER = "DATE,TRANSACTION ID,TRANSACTION TYPE,AMOUNT,ACCOUNT BALANCE";%>
<%  String FILE_HEADER1 = "Customer Name: "+session.getAttribute("fname")+" "+session.getAttribute("lname")+"\nAccount Number: "+session.getAttribute("accnum")+"\n From Date: "+cname.getFromdate()+"\n To Date: "+cname.getTodate();%>
<%
FileWriter fileWriter = null;
try {
	
fileWriter = new FileWriter(cname.getCustid()+"-"+cname.getFromdate().toString()+"-"+cname.getTodate().toString()+".csv",false);
//Write the CSV file header
fileWriter.append(FILE_HEADER1.toString());
fileWriter.append(NEW_LINE_SEPARATOR);
fileWriter.append(NEW_LINE_SEPARATOR);
fileWriter.append(FILE_HEADER.toString());
//Add a new line separator after the header
fileWriter.append(NEW_LINE_SEPARATOR);
//Write a new student object list to the CSV file
for (Model m : model) {
BankStatementGenerationModel e=(BankStatementGenerationModel)m;
String d=e.getTransactionDate();

d1=sdf.parse(d);

fileWriter.append(sdf.format(d1));
fileWriter.append(COMMA_DELIMITER);
fileWriter.append(e.getTransactionId());
fileWriter.append(COMMA_DELIMITER);
fileWriter.append(e.getTransactiontype());
fileWriter.append(COMMA_DELIMITER);
fileWriter.append(e.getAmount());
fileWriter.append(COMMA_DELIMITER);
fileWriter.append(e.getAccountBalance());
fileWriter.append(NEW_LINE_SEPARATOR);
}
//System.out.println("CSV file was created successfully !!!");
} catch (Exception e) {
//System.out.println("Error in CsvFileWriter !!!");
e.printStackTrace();
} 
 finally {
 try {

fileWriter.close();
} catch (IOException e) {
//System.out.println("Error while flushing/closing fileWriter !!!");
 e.printStackTrace();
}

 }
%>



</table>
<br><br><br><input type="submit" value="Download" class="button" >
</form>
<form action="#" style="float: right">
<input type="submit" name="Next" value="Next" class="button">
</form>
</body>
<script>
function check()
{
	
var j="<%=model.size()%>";
if(j>k3)
	{
	window.location='/BankManagementSystem/BankStatement.jsp?cid=haha';
	}
}
</script>
</html>