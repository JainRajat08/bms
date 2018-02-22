package com.cts.BNK.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.cts.BNK.model.LoanModel;
import com.cts.BNK.model.Model;
import com.cts.BNK.model.TransModel;

public class TransDao {
	public static String bal,currTrans,currType,cust_id;
	public String save(Model model)
	{
	int status = 0;
	Connection con = null;

	PreparedStatement ps = null;
	// ResultSet rs = null;
	String t_id = TransactionIDGenerator.transid();
	try {
		System.out.println("@@@@@@");
		TransModel u = (TransModel)model;
		String transdate=u.getTransDate();
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		Date tranDate=sdf.parse(transdate);
		con = BaseDao.getCon();
		ps = con.prepareStatement("INSERT INTO Transaction (transaction_id,customer_id,newcustomerbalance,transaction_type,transaction_date,transaction_amount,accountno) values(?,?,?,?,?,?,?)");

		ps.setString(1, t_id);
		ps.setString(2, u.getCustId());
		cust_id=u.getCustId();
		ps.setString(3, u.getRembal());
		bal=u.getRembal();
		ps.setString(4, u.getTransactiontype1());
		currType=u.getTransactiontype1();
		ps.setDate(5, new java.sql.Date(tranDate.getTime()));
		//ps.setString(5,transdate);
		ps.setString(6, u.getMoney11());
		ps.setString(7, u.getAccno());
		currTrans=u.getMoney11();
	
		status = ps.executeUpdate();
		System.out.println("IN Trans DAO:STATUS" + status);
	} catch (Exception e) {
		e.printStackTrace();
	}
	if (status != 0) {
		updateCustBalance(cust_id,bal);
		return t_id;
	} else
		return null;
}
	
	
	
	
	public void updateCustBalance(String cust_id,String updatedBalance)
	{
		Connection con = null;

		PreparedStatement ps = null;
		try {
			con = BaseDao.getCon();
			ps = con.prepareStatement("update Customerinfo set custbalance='"+updatedBalance+"'where Customer_id=?");
			ps.setString(1, cust_id);
			int status = ps.executeUpdate();
			System.out.println("IN TRANSACTION DAO:CUSTBALANCE"+status);
		}
		catch(SQLException sqe)
		{
			sqe.printStackTrace();
		}
		
	}	
}
