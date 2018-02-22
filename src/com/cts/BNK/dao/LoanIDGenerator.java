package com.cts.BNK.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class LoanIDGenerator {
	public static String loanid() {
		String id = new String();
		try {
			int flag = 1;
			while (flag == 1) {
				String loanid = id();
				Connection con = BaseDao.getCon();
				Statement st = con.createStatement();
				ResultSet rs = st
						.executeQuery("select loanid from loan");
				flag = 0;
				while (rs.next()) {
					if (rs.getString(1).equals(loanid)) {
						flag = 1;
					}
				}
				if (flag == 0) {
					id = loanid;
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
			randno.append("L-0");
			String j = String.valueOf(k);
			randno.append(j);
			return randno.toString();
		} else if (k < 10) {
			StringBuffer randno = new StringBuffer();
			randno.append("L-00");
			String j = String.valueOf(k);
			randno.append(j);
			return randno.toString();
		} else {
			StringBuffer randno = new StringBuffer();
			randno.append("L-");
			String j = String.valueOf(k);
			randno.append(j);
			return randno.toString();
		}
	}
}
