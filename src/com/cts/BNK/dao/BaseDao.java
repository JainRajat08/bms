package com.cts.BNK.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BaseDao {
	private static Connection con = null;
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:XE", "system", "password");
		} catch (Exception e) {
			e.printStackTrace();

		}
	}

	protected static Connection getCon() {
		return con;
	}

	protected static void closeResources(Connection conn, PreparedStatement ps,
			ResultSet rs) {
		try {
			if (rs != null) {
				rs.close();
			}
			if (ps != null) {
				ps.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (Exception E) {
			System.out.println("There is an error" + E.getMessage());
		}

	}
}
