package com.cts.BNK.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class TransactionIDGenerator {
	public static String transid() {
		String id = new String();
		try {
			int flag = 1;
			while (flag == 1) {
				String transid = id();
				Connection con = BaseDao.getCon();
				Statement st = con.createStatement();
				ResultSet rs = st
						.executeQuery("select transaction_id from Transaction");
				flag = 0;
				while (rs.next()) {
					if (rs.getString(1).equals(transid)) {
						flag = 1;
					}
				}
				if (flag == 0) {
					id = transid;
				}
			}
		} catch (Exception E) {

		}
		return id;
	}

	public static String id() {
		int k = (int) (Math.random() * 1000);
		if (k < 100 && k > 10) {
			StringBuffer randno = new StringBuffer();
			randno.append("T-0");
			String j = String.valueOf(k);
			randno.append(j);
			return randno.toString();
		} else if (k < 10) {
			StringBuffer randno = new StringBuffer();
			randno.append("T-00");
			String j = String.valueOf(k);
			randno.append(j);
			return randno.toString();
		} else {
			StringBuffer randno = new StringBuffer();
			randno.append("T-");
			String j = String.valueOf(k);
			randno.append(j);
			return randno.toString();
		}
	}
}
