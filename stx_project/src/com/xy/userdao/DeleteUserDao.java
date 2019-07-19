package com.xy.userdao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.xy.util.JDBCUtil;

public class DeleteUserDao {

	public boolean isExist(int user_id) {
		Connection con = null;
		PreparedStatement st = null;
		boolean is = false;

		try {
			String sql = "select * from tb_user where user_id=?";
			con = JDBCUtil.getCon();
			st = con.prepareStatement(sql);
			st.setInt(1, user_id);
			ResultSet rs = st.executeQuery();
			if (rs.next()) {
				// 用户存在
				is = true;
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.closeCon(con, st);
		}
		return is;
	}

	/**
	 * 删除用户
	 * @param user_id
	 * @return 删除成功或者失败
	 */
	public boolean deluser(int user_id) {

		Connection con = null;
		PreparedStatement st = null;
		boolean delSuccess = false;
		
		try {
			String sql = "delete from tb_user where user_id=?";
			con = JDBCUtil.getCon();
			st = con.prepareStatement(sql);
			st.setInt(1, user_id);
			int n = st.executeUpdate();
			delSuccess = (n == 1);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}finally{
			JDBCUtil.closeCon(con, st);
		}
		return delSuccess;
	}
}
