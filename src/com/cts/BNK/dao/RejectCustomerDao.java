package com.cts.BNK.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.cts.BNK.model.CustomerModel;
import com.cts.BNK.model.Model;

import org.apache.log4j.Logger;

public class RejectCustomerDao {
	public static final transient Logger LOG = Logger.getLogger("com.cts.BNK.dao.NewCustomerViewDao");
	// Updating status to "NO"
	public Model update(Model model) {
		CustomerModel customerModel = (CustomerModel) model;
		Connection conn = null;
		conn = BaseDao.getCon();
		String sql = "update Customerinfo set Approvestatus='no'where Customer_id=? ";
		PreparedStatement pstm = null;
		try {
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, customerModel.getUsername());
			pstm.executeUpdate();
		} catch (Exception e) {
			LOG.info(e.getMessage());
			e.printStackTrace();
		}
		LOG.info("Customer Rejected Successfully");
		return model;
	}

	// Deleting the record from Database
	public Model delete(Model model) {
		CustomerModel customerModel = (CustomerModel) model;
		Connection conn = null;
		conn = BaseDao.getCon();
		String sql = "delete from Customerinfo where Customer_id=? ";
		PreparedStatement pstm = null;
		try {
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, customerModel.getUsername());
			pstm.executeUpdate();
			LOG.info("Customer info deleted Successfully");
		} catch (Exception e) {
			LOG.info(e.getMessage());
			e.printStackTrace();
		}
		return model;
	}
}
