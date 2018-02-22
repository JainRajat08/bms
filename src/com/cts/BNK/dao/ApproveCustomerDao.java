package com.cts.BNK.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.cts.BNK.model.CustomerModel;
import com.cts.BNK.model.Model;
import org.apache.log4j.Logger;

public class ApproveCustomerDao extends BaseDao {
	@SuppressWarnings("finally")
	public static final transient Logger LOG = Logger.getLogger("com.cts.BNK.dao.ApproveCustomerDao");
	@SuppressWarnings("finally")
	public Model update(Model model) {
		CustomerModel customerModel = (CustomerModel) model;
		Connection conn = null;
		String sql = "update Customerinfo set Approvestatus='yes',Accountno=?,ActivationDate=? where Customer_id=? ";
		PreparedStatement pstm = null;
		try {
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("ddMMyyhhmmss");
			conn = BaseDao.getCon();
			pstm = conn.prepareStatement(sql);
			pstm.setString(3, customerModel.getUsername());
			pstm.setDate(2, new java.sql.Date(date.getTime()));
			String acc = "0" + customerModel.getUsername().substring(2)
					+ sdf.format(date);
			pstm.setString(1, acc);
			pstm.executeUpdate();
			LOG.info("Successfully values set");

		} catch (Exception e) {
			// TODO: handle exception
			LOG.info(e.getMessage());
			System.out.println("ERROR!!" + e.getMessage());
		} finally {
			return model;
		}
	}
}
