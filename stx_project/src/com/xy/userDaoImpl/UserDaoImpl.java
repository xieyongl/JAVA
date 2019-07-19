package com.xy.userDaoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.xy.userdao.UserDao;
import com.xy.entity.Kinder;
import com.xy.entity.MyUser;
import com.xy.util.JDBCUtil;

public class UserDaoImpl implements UserDao {

	/**
	 * 返回值num：1 存入注册数据成功 0 存储失败
	 * 
	 */
	public int save(MyUser user) {
		// 存储数据
		int num = 0;
		try {
			Connection conn = JDBCUtil.getCon();
			String sql = "insert into tb_user(user_name,pass_word,user_email,user_code,phone_number) values(?,?,?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUser_name());
			pstmt.setString(2, user.getPass_word());
			pstmt.setString(3, user.getUser_email());
			pstmt.setString(4, user.getRegist_code());
			pstmt.setString(5, user.getPhone_number());
			num = pstmt.executeUpdate();
			JDBCUtil.close(conn, pstmt, null);
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
			return -1;
		}
		return num;

	}

	/**
	 * 验证码是否发送成功 num:1 更新成功 0 更新失败
	 */
	// public int activeUser(String code) {
	// int num = 0;
	// try {
	// Connection conn=DBUtil.getCon();
	// String sql="update user set user_status=1 where regist_code=?";
	// PreparedStatement pstmt = conn.prepareStatement(sql);
	// pstmt.setString(1, code);
	// num = pstmt.executeUpdate();
	// DBUtil.close(conn,pstmt,null);
	// } catch (SQLException | ClassNotFoundException e) {
	// e.printStackTrace();
	// }
	// return num;
	// }

	/**
	 * 存入发布的文章/作品数据
	 */
	public int saveBlog(Kinder blog) {
		int num = 0;
		return num;
	}

	/**
	 * 用户名和密码匹配 num 1 成功
	 */
	public int loginUP(MyUser user) {
		int num = 0;
		try {
			Connection conn = JDBCUtil.getCon();
			String sql = "select * from tb_user where user_name=? and pass_word=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUser_name());
			pstmt.setString(2, user.getPass_word());
			num = pstmt.executeUpdate();
			JDBCUtil.close(conn, pstmt, null);
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
			return -1;
		}
		return num;
	}

	/**
	 * 用户名是否存在，num:0 不存在 1 存在
	 */
	public int existU(MyUser user) {
		int num = 0;
		// TODO Auto-generated method stub
		try {
			// 查询用户名
			Connection conn = JDBCUtil.getCon();
			String sql = "select * from tb_user where user_name=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUser_name());
			num = pstmt.executeUpdate();
			JDBCUtil.close(conn, pstmt, null);
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
			return -1;
		}
		return num;
	}
}