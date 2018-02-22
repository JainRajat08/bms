package com.cts.BNK.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import org.apache.log4j.Logger;

public class CustomerIDgenerator {
	public static final transient Logger LOG = Logger.getLogger("com.cts.BNK.dao.CustomerIDgenerator");
	public static String customerid() {
		String id = new String();
		try {
			int flag = 1;
			while (flag == 1) {
				String custid = id();
				Connection con = BaseDao.getCon();
				Statement st = con.createStatement();
				ResultSet rs = st
						.executeQuery("select Customer_id from Customerinfo");
				flag = 0;
				while (rs.next()) {
					if (rs.getString(1).equals(custid)) {
						flag = 1;
					}
				}
				if (flag == 0) {
					id = custid;
				}
			}
		} catch (Exception E) {
			LOG.info(E.getMessage());

		}
		LOG.info("Customer Id Generated");
		return id;
	}

	public static String id() {
		int k = (int) (Math.random() * 1000);
		if (k < 100 && k > 10) {
			StringBuffer randno = new StringBuffer();
			randno.append("R-0");
			String j = String.valueOf(k);
			randno.append(j);
			return randno.toString();
		} else if (k < 10) {
			StringBuffer randno = new StringBuffer();
			randno.append("R-00");
			String j = String.valueOf(k);
			randno.append(j);
			return randno.toString();
		} else {
			StringBuffer randno = new StringBuffer();
			randno.append("R-");
			String j = String.valueOf(k);
			randno.append(j);
			return randno.toString();
		}
	}
}
