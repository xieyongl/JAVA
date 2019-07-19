package com.xy.userdao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.xy.entity.MyUser;
import com.xy.util.JDBCUtil;

public class MyUserDao {
	
	/**
	 * 根据用户名和密码，查询该用户信息
	 * 
	 * @param user
	 *            包含用户名和密码
	 * @return MyUser 包含用户编号、用户名  or null 查询不到该用户
	 */
	public MyUser queryMyUser(MyUser user) {

		MyUser myUser = null;
		Connection con = null;
		PreparedStatement st = null;
		try {
			// 2.查询数据库中该用户跟密码是否存在
			
			String sql = "select * from tb_user where user_name=? and pass_word=?";
			con = JDBCUtil.getCon();
			st = con.prepareStatement(sql);
			st.setString(1, user.getUser_name());
			st.setString(2, user.getPass_word());
			System.out.println(user.getUser_name()+"--" +user.getPass_word());
			ResultSet rs = st.executeQuery();
			if(rs.next())
			{
				//如果存在，则登录成功
				myUser = new MyUser(rs.getInt("user_id"),rs.getString("user_name"),rs.getString("pass_word"),rs.getInt("type_id"),rs.getString("user_email"),rs.getString("user_registered"),rs.getString("phone_number"));
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		finally
		{
			JDBCUtil.closeCon(con, st);
		}
		
		return myUser;
	}
	
	/**
	 * 查询用户的个人信息
	 */
	public MyUser PersonInfo(MyUser user)
	{
		MyUser myUser = null;
		Connection con = null;
		PreparedStatement st = null;
		try {
			//查询用户名
			String sql = "select * from tb_user where username=?";
			con = JDBCUtil.getCon();
			st = con.prepareStatement(sql);
			st.setString(1, user.getUser_name());
			ResultSet rs = st.executeQuery();
			if(rs.next())
			{
				//如果存在，返回该用户的所有信息
				myUser = new MyUser(rs.getInt("user_id"),rs.getString("user_name"),null,rs.getInt("type_id"),rs.getString("user_email"),rs.getString("user_registered"),rs.getString("phone_number"));
				
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		finally
		{
			JDBCUtil.closeCon(con, st);
		}
		
		return myUser;
	
	}
	
	
	
	/**
	 * 查询所有用户的信息
	 * @return
	 */
	public ArrayList<MyUser> getAllUsers()
	{
		Connection con = null;
		PreparedStatement st = null;
		ArrayList<MyUser> users = new ArrayList<MyUser>();
		
		try {
			String sql = "select user_id,user_name,type_id,user_email,user_registered,phone_number from tb_user";
			con = JDBCUtil.getCon();
			st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			while(rs.next())
			{
				//将表中的一行转化成一个对象
				MyUser u_ser = new MyUser(rs.getInt("user_id"),rs.getString("user_name"),null,rs.getInt("type_id"),rs.getString("user_email"),rs.getString("user_registered"),rs.getString("phone_number"));
				//将对象放入ArrayList中
				users.add(u_ser);
			}
			
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		finally{
			JDBCUtil.closeCon(con, st);
		}
		return users;
		
				
	}
}
