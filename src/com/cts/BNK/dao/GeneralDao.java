package com.cts.BNK.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class GeneralDao {
	
	
	//Get Login User customer id 
	public String getCustomerId(String username) {
		String cust_id = "";
		try {
			PreparedStatement ps = BaseDao.getCon().prepareStatement(
					"Select Customer_id from Customerinfo where UserName=?");
			ps.setString(1, username);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				cust_id = rs.getString(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (!cust_id.equals(""))
			return cust_id;
		else
			return null;
	}
	
	
	
	//Get Login User First name 
	public String getFirstName(String username) {
		String firstname = "";
		try {
			PreparedStatement ps = BaseDao.getCon().prepareStatement(
					"Select FirstName from Customerinfo where UserName=?");
			ps.setString(1, username);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				firstname = rs.getString(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (!firstname.equals(""))
			return firstname;
		else
			return null;
	}
	
	
	
	//Get Login User Last name
	public String getLastName(String username) {
		String lastname = "";
		try {
			PreparedStatement ps = BaseDao.getCon().prepareStatement(
					"Select LastName from Customerinfo where UserName=?");
			ps.setString(1, username);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				lastname = rs.getString(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (!lastname.equals(""))
			return lastname;
		else
			return null;
	}
	
	//Get Customer Balance from CustomerInfo
	public String getCustBalance(String username) {
		String custbal = "";
		try {
			PreparedStatement ps = BaseDao.getCon().prepareStatement(
					"Select custbalance from Customerinfo where UserName=?");
			ps.setString(1, username);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				custbal = rs.getString(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (!custbal.equals(""))
			return custbal;
		else
			return null;
	}
	
	//Get Initial Amount Balance from CustomerInfo
	public String getInitBalance(String username) {
		String initbal = "";
		try {
			PreparedStatement ps = BaseDao.getCon().prepareStatement(
					"Select InitialDepositAmount from Customerinfo where UserName=?");
			ps.setString(1, username);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				initbal = rs.getString(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (!initbal.equals(""))
			return initbal;
		else
			return null;
	}
	
	
	//Get Account number from CustomerInfo
	public String getAccNumber(String username) {
		String accnum = "";
		try {
			PreparedStatement ps = BaseDao.getCon().prepareStatement(
					"Select Accountno from Customerinfo where UserName=?");
			ps.setString(1, username);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				accnum = rs.getString(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (!accnum.equals(""))
			return accnum;
		else
			return null;
	}
	
	
	
	
	//check whether User name is unique or not
	public String checkUserName(String username) {
		try {
			int flag = 0;
			
				Connection con = BaseDao.getCon();
				Statement st = con.createStatement();
				ResultSet rs = st
						.executeQuery("select UserName from Customerinfo");
				while (rs.next()) {
					if (rs.getString(1).equals(username)) {
						flag = 1;
					}
				}
				if (flag == 0) {
					return username;
				}
		} catch (Exception E) {

		}
		return null;
	}	
}
