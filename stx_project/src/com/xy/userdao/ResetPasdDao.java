package com.xy.userdao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.xy.entity.MyUser;
import com.xy.util.JDBCUtil;

/**
 * 重置密码
 * @author
 *
 */
public class ResetPasdDao {

	//密码处理
	public boolean dealPassword(String newpass_word,MyUser user)
	{
		Connection con = null;
		PreparedStatement st = null;
		boolean resetsuccess = false;
		
		try {
			String sql = "update tb_user set pass_word=? where user_name=?";

			con= JDBCUtil.getCon();
			st = con.prepareStatement(sql);
			st.setString(1, newpass_word);
			st.setString(2,user.getUser_name());
//			st.setString(parameterIndex, x);
//			ResultSet rs = st.executeQuery();
//			if(rs.next())
//			{
				int n = st.executeUpdate();
				resetsuccess = n == 1;
//			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		finally{
			JDBCUtil.closeCon(con, st);
		}
		return resetsuccess;
	}
	                                                                                                                               
	//用户名密码判断
	public boolean isChangePassWord(MyUser user)
	{
//		MyUser myUser = null;
		Connection con = null;
		PreparedStatement st = null;
		try {
			// 2.查询数据库中该用户跟密码是否存在
			
			String sql = "select * from tb_user where user_name=? and pass_word=?";
			con = JDBCUtil.getCon();
			st = con.prepareStatement(sql);
			st.setString(1, user.getUser_name());
			st.setString(2, user.getPass_word());
//			System.out.println(user.getUser_name()+"--" +user.getPass_word());
			ResultSet rs = st.executeQuery();
			if(rs.next())
			{
				//如果存在，则可以修改密码
				return true;
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		finally
		{
			JDBCUtil.closeCon(con, st);
		}
		
		return false;
	
	}
}
