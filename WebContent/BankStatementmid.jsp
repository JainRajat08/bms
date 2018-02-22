<%@ page import="java.text.SimpleDateFormat,java.util.Date,java.util.GregorianCalendar,java.util.Calendar" %>
<%@ page import="java.sql.Connection,java.sql.DriverManager,java.sql.SQLException,java.sql.Statement,java.sql.ResultSet,java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.cts.BNK.dao.RegisterDAO"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BSG</title>
</head>
<body>
<div style="color:white ;background-color:Black" >
<div align="center"><h1>REGISTRATION SUCCESSFUL</h1></div>
</div>
<jsp:useBean id="obj" class="com.cts.BNK.model.BNKstatement"></jsp:useBean>
<jsp:setProperty property="*" name="obj"/>
<%
session.setAttribute("stateobject",obj);
response.sendRedirect("BaseController");
%>
</body>
</html>