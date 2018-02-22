    package com.cts.BNK.dao;
	import java.sql.Connection;
	import java.sql.PreparedStatement;
    import java.sql.ResultSet;
import java.text.SimpleDateFormat;
	import java.util.Date;

import com.cts.BNK.model.Model;
import com.cts.BNK.model.Registration;

	public class UpdateCustinfoDao {
		public Registration extract(String cus_id) {
			Connection con = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			Registration u=null;
				try {
				u = new Registration();
				con = BaseDao.getCon();
				ps = con.prepareStatement("select FirstName, LastName, country,state,gender,DOB,RegistrationDate,BranchName,ifsc,IdType,IdNumber,RefName,RefAccNo,RefAdd,address,ContactNumber,email,MaritalStatus,AccountType,citizenship,CitizenStatus,GuardianType,GuardianName,alternateaddress,alternatecontactno from Customerinfo where Customer_id=?");
				ps.setString(1, cus_id);
				rs = ps.executeQuery();
				while(rs.next()){
					
					
					u.setFname(rs.getString("FirstName"));
					u.setLname(rs.getString("LastName"));
					u.setGuardiantype(rs.getString("GuardianType"));
					u.setGuardianname(rs.getString("GuardianName"));
					u.setAddress(rs.getString("address"));
					u.setCitizenship(rs.getString("citizenship"));
					u.setCountry(rs.getString("country"));
					u.setState(rs.getString("state"));
					u.setEmail(rs.getString("email"));
					u.setGender(rs.getString("gender"));
					u.setMarital(rs.getString("MaritalStatus"));
					u.setContactno(rs.getString("ContactNumber"));
					u.setRegdate(rs.getString("RegistrationDate"));
					u.setDob(rs.getString("DOB"));
					u.setActype(rs.getString("AccountType"));
					u.setBranch(rs.getString("BranchName"));
					u.setCitizenstatus(rs.getString("CitizenStatus"));
					u.setIdno(rs.getString("IdNumber"));
					u.setIdtype(rs.getString("IdType"));
					u.setIfsc1(rs.getString("ifsc"));
					u.setRefname(rs.getString("RefName"));
					u.setRefacadd(rs.getString("RefAdd"));
					u.setRefaccno(rs.getString("RefAccNo"));
					u.setAltaddress(rs.getString("alternateaddress"));
					u.setAltcontactno(rs.getString("alternatecontactno"));
					
					
					
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return u;
		}
		
		
		
		
		
		public String update(Registration u,String cust_id) {
			int status = 0;
			Connection con = null;
			PreparedStatement ps = null;
			// ResultSet rs = null;
			try {

				con = BaseDao.getCon();
				ps = con.prepareStatement("update Customerinfo set GuardianType=?,GuardianName=?,email=?,MaritalStatus=?,ContactNumber=?,IdType=?,IdNumber=?,RefName=?,RefAccNo=?,RefAdd=?,alternateaddress=?,alternatecontactno=? where Customer_id=?");
				ps.setString(1, u.getGuardiantype());
				ps.setString(2, u.getGuardianname());
				ps.setString(3, u.getEmail());
				ps.setString(4, u.getMarital());
				ps.setString(5, u.getContactno());
				ps.setString(6, u.getIdtype());
				ps.setString(7, u.getIdno());
				ps.setString(8, u.getRefname());
				ps.setString(9, u.getRefaccno());
				ps.setString(10, u.getRefacadd());
				ps.setString(11, u.getAltaddress());
				ps.setString(12, u.getAltcontactno());
				ps.setString(13, cust_id);
				
				status = ps.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}
			if (status != 0) {
				return cust_id;
			} else
				return null;

		}
		
		
		
		
		
		
	}