<%@ page import="com.cts.BNK.model.*,java.util.List,java.io.FileWriter,java.io.IOException,java.util.Arrays,com.cts.BNK.dao.BankStatementDao,java.io.File,java.io.PrintWriter;
    " %>

<%    
	BNKstatement cname=(BNKstatement)session.getAttribute("stateobject");
List<Model> list=(List<Model>)session.getAttribute("Liststate");
  String filename = cname.getCustid()+"-"+cname.getFromdate()+"-"+cname.getTodate()+".csv";   
  String filepath = "D:\\";   
  response.setContentType("APPLICATION/OCTET-STREAM");   
  response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");   
  File f=new File(filepath + filename);
 if(!f.exists())
	 f.createNewFile();
  java.io.FileInputStream fileInputStream=new java.io.FileInputStream(f);  
      PrintWriter pw=new PrintWriter(f);
      pw.println("Customer Name: "+session.getAttribute("fname")+" "+session.getAttribute("lname"));
      pw.println("Account Number: "+cname.getAccnumber());
      pw.println("From Date: "+cname.getFromdate());
      pw.println("From Date: "+cname.getTodate());
      
     pw.println("Transaction Date"+" 	"+","+"Transaction Amount"+" 	"+","+"Transaction Type"+" 	"+","+"Transaction ID"+" 	"+","+"Current Account Balance");
      for(Model bs:list)
      {
    	  BankStatementGenerationModel bs1=(BankStatementGenerationModel)bs;
      System.out.println(bs1.getTransactiontype()+" "+bs1.getAccountBalance());
      pw.println(bs1.getTransactionDate()+"		"+","+bs1.getAmount()+","+bs1.getTransactiontype()+","+bs1.getTransactionId()+","+bs1.getAccountBalance());
      pw.flush();
      }
  
  
  fileInputStream.close();   
%>   
