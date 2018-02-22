package com.cts.BNK.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.cts.BNK.model.Model;
import com.cts.BNK.model.Registration;

import org.apache.log4j.Logger;

public class RegisterDAO {
	public static final transient Logger LOG = Logger.getLogger("com.cts.BNK.dao.RegisterDao");
	public String save(Model model) {
		int status = 0;
		Connection con = null;
		PreparedStatement ps = null;
		// ResultSet rs = null;
		String c_id = CustomerIDgenerator.customerid();
		try {
			Registration u = (Registration) model;
			String MyDate = u.getRegdate();
			String DOB = u.getDob();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date date = sdf.parse(MyDate);
			Date birth = sdf.parse(DOB);

			con = BaseDao.getCon();
			ps = con.prepareStatement("INSERT INTO Customerinfo (FirstName,LastName,UserName,password,GuardianType,GuardianName,address,citizenship,country,state,CountryId,email,gender,MaritalStatus,ContactNumber,RegistrationDate,DOB,AccountType,InitialDepositAmount,BranchName,ifsc,CitizenStatus,PanNumber,IdType,IdNumber,RefName,RefAccNo,RefAdd,Customer_id,interestrate,custbalance,Accountno,alternateaddress,alternatecontactno) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, u.getFname());
			ps.setString(2, u.getLname());
			ps.setString(3, u.getUsername());
			ps.setString(4, u.getPass());
			ps.setString(5, u.getGuardiantype());
			ps.setString(6, u.getGuardianname());
			ps.setString(7, u.getAddress());
			ps.setString(8, u.getCitizenship());
			ps.setString(9, u.getCountry());
			ps.setString(10, u.getState());
			ps.setString(11, u.getCountryid());
			ps.setString(12, u.getEmail());
			ps.setString(13, u.getGender());
			ps.setString(14, u.getMarital());
			ps.setString(15, u.getContactno());
			ps.setDate(16, new java.sql.Date(date.getTime()));
			ps.setDate(17, new java.sql.Date(birth.getTime()));
			ps.setString(18, u.getActype());
			ps.setString(19, u.getIda());
			ps.setString(20, u.getBranch());
			ps.setString(21, u.getIfsc1());
			ps.setString(22, u.getCitizenstatus());
			ps.setString(23, u.getPan());
			ps.setString(24, u.getIdtype());
			ps.setString(25, u.getIdno());
			ps.setString(26, u.getRefname());
			ps.setString(27, u.getRefaccno());
			ps.setString(28, u.getRefacadd());
			ps.setString(29, c_id);
			ps.setString(30, u.getInterest());
			ps.setString(31, u.getIda());
			ps.setString(32, "null");
			ps.setString(33, u.getAltaddress());
			ps.setString(34, u.getAltcontactno());
			status = ps.executeUpdate();
		} catch (Exception e) {
			LOG.info(e.getMessage());
			e.printStackTrace();
		}
		if (status != 0) {
			LOG.info("Succesfull Insertion into Database");
			return c_id;
		} else
			return null;

	}
}
