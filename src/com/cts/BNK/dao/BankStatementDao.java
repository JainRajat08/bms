package com.cts.BNK.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.cts.BNK.model.BNKstatement;
import com.cts.BNK.model.BankStatementGenerationModel;
import com.cts.BNK.model.Model;
import org.apache.log4j.Logger;

public class BankStatementDao {
	public static final transient Logger LOG = Logger.getLogger("com.cts.BNK.dao.BankStatementDao");
	final static List<Model> b= new ArrayList<Model>();

	public static List<Model> getB() {
		return b;
	}
	
	public List<Model> display(Model model) {

		BNKstatement bsg = (BNKstatement) model;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String s;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			con = BaseDao.getCon();
			String cid = bsg.getCustid();
			String acc = null, fname = null, lname = null;
			ps = con.prepareStatement("Select FirstName,LastName,Accountno from Customerinfo where Customer_id=?");
			ps.setString(1, cid);
			rs = ps.executeQuery();
			while (rs.next()) {
				acc = rs.getString(3);
				fname = rs.getString(1);
				lname = rs.getString(2);
			}
			Date d1 = sdf.parse(bsg.getFromdate());
			Date d2 = sdf.parse(bsg.getTodate());
			s = bsg.getTransactiontype();
			if (s.equalsIgnoreCase("Deposit"))
				ps = con.prepareStatement("Select transaction_id,transaction_type,transaction_date,transaction_amount,newcustomerbalance from Transaction where Customer_id=? and transaction_date between ? and ? and transaction_type='Deposit'");
			else if (s.equalsIgnoreCase("Withdrawal"))
				ps = con.prepareStatement("Select transaction_id,transaction_type,transaction_date,transaction_amount,newcustomerbalance from Transaction where Customer_id=? and transaction_date between ? and ? and transaction_type='Withdrawal'");
			else if(s.equalsIgnoreCase("Both"))
				ps = con.prepareStatement("Select transaction_id,transaction_type,transaction_date,transaction_amount,newcustomerbalance from Transaction where Customer_id=? and transaction_date between ? and ?");
			ps.setString(1, cid);
			ps.setDate(2, new java.sql.Date(d1.getTime()));
			ps.setDate(3, new java.sql.Date(d2.getTime()));

			rs = ps.executeQuery();
			while (rs.next()) {
				BankStatementGenerationModel k = new BankStatementGenerationModel();
				k.setAccno(acc);
				k.setFname(fname);
				k.setLname(lname);
				// System.out.println(rs.getString(1));
				k.setTransactionId(rs.getString(1));
				k.setTransactiontype(rs.getString(2));
				k.setTransactionDate(rs.getString(3));
				k.setAmount(rs.getString(4));
				k.setAccountBalance(rs.getString(5));
				k.setCustomer_id(cid);
				b.add((Model) k);
			}
			LOG.info("Transaction performed Successfully");
		} catch (Exception E) {
			LOG.info(E.getMessage());
			E.printStackTrace();
		}

		return b;

	}
}
