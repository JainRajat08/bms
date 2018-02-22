package com.cts.BNK.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.cts.BNK.model.AdminLoginModel;
import com.cts.BNK.model.Model;
import org.apache.log4j.Logger;

public class AdminLoginDao extends BaseDao {
	public static final transient Logger LOG = Logger.getLogger("com.cts.BNK.dao.AdminLoginDao");
	public boolean login(Model basemodel) {
		AdminLoginModel adminLogin = (AdminLoginModel) basemodel;
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		try {
			conn = BaseDao.getCon();
			pstm = conn
					.prepareStatement("select * from Admin where uname =? AND password=?");
			pstm.setString(1, adminLogin.getUserName());
			pstm.setString(2, adminLogin.getPassword());
			rs = pstm.executeQuery();
			 LOG.info("Succesfully Extracted Admin Info");
			return rs.next();

		} catch (Exception e) {

			// TODO: handle exception
			LOG.info(e.getMessage());
			System.out.println("Error in Login" + e.getMessage());
		}
		return false;
	}
}
