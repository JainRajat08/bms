package com.cts.BNK.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import sun.util.calendar.BaseCalendar;

import com.cts.BNK.controller.BaseController;
import com.cts.BNK.model.LoanModel;
import com.cts.BNK.model.Model;

public class LoanDao {

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
		System.out.println("IN LOANDAO:GETCUSTOMERID" + cust_id);
		if (!cust_id.equals(""))
			return cust_id;
		else
			return null;
	}

	public String save(Model model) {
		int status = 0;
		Connection con = null;

		PreparedStatement ps = null;
		// ResultSet rs = null;
		String l_id = LoanIDGenerator.loanid();
		try {
			System.out.println("@@@@@@");
			LoanModel u = (LoanModel) model;
			System.out.println("$$$$" + u.getRate());
			String issuedate = u.getIssdate();
			System.out.println("date" + issuedate);
			String applydate = u.getAplydate();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date date = sdf.parse(issuedate);
			Date birth = sdf.parse(applydate);
			System.out.println("IN LOAN DAO:DATE" + date);
			System.out.println("IN LOAN DAO:DATE1" + birth);
			con = BaseDao.getCon();
			ps = con.prepareStatement("INSERT INTO loan (loantype,loanid,loanamount,loanissuedate,loanapplydate,rate,duration,coursefee,course,fathername,fatheroccupation,fathertotalexp,fatherexpcurcmpy,rationcardno,familyannualincome,annualincome,companyname,designation,totalexp,expcurcmpy,Customer_id,guarantorname,guarantoraddress,guarantorincome) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			System.out.println("loan type is : "+u.getLoantype());
			ps.setString(1, u.getLoantype());
			ps.setString(2, l_id);
			ps.setString(3, u.getLoanamt());

			ps.setDate(4, new java.sql.Date(date.getTime()));
			ps.setDate(5, new java.sql.Date(birth.getTime()));
			ps.setString(6, u.getRate());
			ps.setString(7, u.getDuration());
			ps.setString(8, u.getCoursefee());
			ps.setString(9, u.getCoursename());
			ps.setString(10, u.getFathername());
			ps.setString(11, u.getFatheroccu());
			ps.setString(12, u.getFathertexp());
			ps.setString(13, u.getFathercexp());
			ps.setString(14, u.getRation());
			ps.setString(15, u.getFamilyincome());
			// ps.setDate(16, new java.sql.Date(date.getTime()));
			// ps.setDate(17, new java.sql.Date(birth.getTime()));
			ps.setString(16, u.getIncome());
			ps.setString(17, u.getCompany());
			ps.setString(18, u.getDesig());
			ps.setString(19, u.getTexp());
			ps.setString(20, u.getCcexp());
			ps.setString(21, getCustomerId(u.getUname()));
			ps.setString(22, u.getGname());
			ps.setString(23, u.getGaddress());
			ps.setString(24, u.getGincome());
			
			status = ps.executeUpdate();
			System.out.println("IN LOAN DAO:STATUS" + status);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (status != 0) {
			return l_id;
		} else
			return null;

	}
}
