package com.test.diary;

import java.sql.*;

public class DBUtil {
private static Connection conn = null;
	
	public static Connection open() {
			
			String driver="oracle.jdbc.driver.OracleDriver";
			String url="jdbc:oracle:thin:@test_high?TNS_ADMIN=/Users/yangha-eun/wallet_test";
			String user="ADMIN";
			String password = "Gksl990613!!";
			
			
			try {
				Class.forName(driver);
				conn = DriverManager.getConnection(url, user, password);
				
				return conn;
			
			
				
			} catch(Exception e) {
				System.out.println("DBUtil.open");
				e.printStackTrace();
			}
		
			return null;
			
		}
}
