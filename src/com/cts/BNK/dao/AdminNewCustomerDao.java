package com.cts.BNK.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.cts.BNK.model.AdminNewCustomerModel;
import com.cts.BNK.model.Model;
import org.apache.log4j.Logger;

public class AdminNewCustomerDao {
	public static final transient Logger LOG = Logger.getLogger("com.cts.BNK.dao.AdminNewCustomerDao");
	public List<Model> display(Model model) {
		// int status = 0;
		Connection con = null;
		Statement st = null;
		// PreparedStatement ps = null;
		ResultSet rs = null;
		List<AdminNewCustomerModel> newcust = new ArrayList<AdminNewCustomerModel>();
		// AdminNewCustomerModel anc = (AdminNewCustomerModel) model;
		try {
			// AdminNewCustomerModel anc = new AdminNewCustomerModel();
			con = BaseDao.getCon();
			st = con.createStatement();
			rs = st.executeQuery("select Customer_id, FirstName, LastName, RegistrationDate,Approvestatus from Customerinfo where Approvestatus='pending'");
			while (rs.next()) {
				AdminNewCustomerModel anc = new AdminNewCustomerModel();
				anc.setCustomer_id(rs.getString(1));
				anc.setFirstName(rs.getString(2));
				anc.setLastName(rs.getString(3));
				anc.setRegistrationDate(rs.getString(4));
				anc.setApprovestatus(rs.getString(5));
				newcust.add(anc);
				LOG.info("Successfully Extracted");
			}
			// List<Model> u = new ArrayList<Model>(newcust);
		} catch (Exception E) {
			LOG.info(E.getMessage());
			System.out.println("Exception caught:" + E.getMessage());
		}
		List<Model> u = new ArrayList<Model>(newcust);
		return u;

	}
}
