package com.cts.BNK.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.cts.BNK.model.CustomerModel;
import com.cts.BNK.model.Model;
import com.cts.BNK.model.Registration;

public class NewCustomerViewDao {
	public Model displayrecords(Model model) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		Registration record = new Registration();
		CustomerModel customerModel = (CustomerModel) model;
		// Model list = new Model();
		try {

			con = BaseDao.getCon();
			ps = con.prepareStatement("select FirstName,LastName,UserName,password,GuardianType,GuardianName,address,citizenship,country,state,CountryId,email,gender,MaritalStatus,ContactNumber,DOB,AccountType,InitialDepositAmount,BranchName,ifsc,CitizenStatus,PanNumber,IdType,IdNumber,RefName,RefAccNo,RefAdd,Customer_id,interestrate,alternateaddress,alternatecontactno from Customerinfo where Customer_id=?");
			ps.setString(1, customerModel.getUsername());
			rs = ps.executeQuery();
			while (rs.next()) {
				record.setFname(rs.getString(1));
				record.setLname(rs.getString(2));
				record.setUsername(rs.getString(3));
				record.setPass(rs.getString(4));
				record.setGuardiantype(rs.getString(5));
				record.setGuardianname(rs.getString(6));
				record.setAddress(rs.getString(7));
				record.setCitizenship(rs.getString(8));
				record.setCountry(rs.getString(9));
				record.setState(rs.getString(10));
				record.setCountryid(rs.getString(11));
				record.setEmail(rs.getString(12));
				record.setGender(rs.getString(13));
				record.setMarital(rs.getString(14));
				record.setContactno(rs.getString(15));
				record.setDob(rs.getString(16));
				record.setActype(rs.getString(17));
				record.setIda(rs.getString(18));
				record.setBranch(rs.getString(19));
				record.setIfsc1(rs.getString(20));
				record.setCitizenstatus(rs.getString(21));
				record.setPan(rs.getString(22));
				record.setIdtype(rs.getString(23));
				record.setIdno(rs.getString(24));
				record.setRefname(rs.getString(25));
				record.setRefaccno(rs.getString(26));
				record.setRefacadd(rs.getString(27));
				record.setInterest(rs.getString(29));
				record.setAltaddress(rs.getString(30));
				record.setAltcontactno(rs.getString(31));
				// list = (Model) record;
			}
		} catch (Exception e) {

		}
		System.out.println(record.getFname());
		Model list = (Model) record;
		return list;

	}
}
