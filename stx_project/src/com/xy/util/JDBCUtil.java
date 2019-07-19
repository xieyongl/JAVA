package com.xy.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCUtil {
	
	public static String driverName;
	public static String url;
	public static String userName;
	public static String password;
	
	/**
	 * 获取数据库连接
	 * @return Connection 连接对象
	 * @throws ClassNotFoundException 
	 * @throws SQLException 
	 */
	public static Connection getCon() throws ClassNotFoundException, SQLException {
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://120.79.78.91:33306/cxsj", "cxsj",
				"bkEFP5xyZyxLwTeC");

		return con;
	}
	
	/**
	 * 释放资源方法
	 * @param con 连接对象
	 * @param st 语句对象
	 */
	public static void closeCon(Connection con, Statement st) {
		try {
			if (st != null)
				st.close();
			if (con != null)
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void closeCon(Connection con, PreparedStatement ps) {
		try {
			if (ps != null)
				ps.close();
			if (con != null)
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Connection conn,PreparedStatement pstmt,ResultSet rs){
		try {
			if(rs!=null){
				rs.close();
			}
			if(pstmt!=null){
				pstmt.close();
			}
			if(rs!=null){
				rs.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
}
