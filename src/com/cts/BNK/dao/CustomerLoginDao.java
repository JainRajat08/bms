package com.cts.BNK.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.cts.BNK.model.CustomerLoginModel;
import com.cts.BNK.model.Model;
import org.apache.log4j.Logger;

public class CustomerLoginDao extends BaseDao {
	public static final transient Logger LOG = Logger.getLogger("com.cts.BNK.dao.CustomerLoginDao");
	public Model login(Model basemodel) {
		CustomerLoginModel loginModel = (CustomerLoginModel) basemodel;
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		try {
			conn = BaseDao.getCon();
			pstm = conn
					.prepareStatement("select * from Customerinfo where (UserName =? OR Customer_id=?)AND password=?");
			pstm.setString(1, loginModel.getUsername());
			pstm.setString(2, loginModel.getUsername());
			pstm.setString(3, loginModel.getPassword());
			rs = pstm.executeQuery();
			if (rs.next()) {
				loginModel.setStatus(rs.getString("Approvestatus"));
				loginModel.setAccountno(rs.getString("Accountno"));
				LOG.info("Succesfull Login Details Extraction");
				return basemodel;
			} else {
				return null;
			}

		} catch (Exception e) {

			// TODO: handle exception
			LOG.info(e.getMessage());
			System.out.println("Error in Login" + e.getMessage());
		}
		return null;
	}
}
