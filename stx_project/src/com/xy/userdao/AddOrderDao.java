package com.xy.userdao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.xy.entity.Order;
import com.xy.util.JDBCUtil;

public class AddOrderDao {

	/**
	 * 判断是否是普通用户
	 * 
	 * @return
	 */
	public boolean isOrdinaryUser(Order o) {
		Connection con = null;
		PreparedStatement ps = null;
		boolean yes = false;
		try {
			String sql = "select * from tb_user where user_name = ? and type_id=0";
			con = JDBCUtil.getCon();
			ps = con.prepareStatement(sql);
			ps.setString(1, o.getUser_name());
			ResultSet rs = ps.executeQuery();
			if(rs.next())
				{
					yes = true;
				}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.closeCon(con, ps);
		}
		return yes;
	}

	/**
	 * 判断是否是摄影师
	 */
	public boolean isPhotographer(Order o) {
		Connection con = null;
		PreparedStatement ps = null;
		boolean is = false;
		try {
			String sql = "select * from tb_user where user_name = ? and type_id=1";
			con = JDBCUtil.getCon();
			ps = con.prepareStatement(sql);
			ps.setString(1, o.getPhotographer_name());
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				is= true;
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.closeCon(con, ps);
		}
		return is;
	}

	public boolean AddOrder(Order o) {
		Connection con = null;
		PreparedStatement ps = null;
		boolean AddSuccess = false;

		try {
			String sql = "insert into tb_reservation (user_name,photographer_name,makeuper_name,r_content,r_date,r_address) values(?,?,?,?,?,?)";
			con = JDBCUtil.getCon();
			ps = con.prepareStatement(sql);
			ps.setString(1, o.getUser_name() );
			ps.setString(2, o.getPhotographer_name());
			ps.setString(3, o.getMakeuper_name());
			ps.setString(4, o.getR_content());
			ps.setString(5, o.getR_date());
			ps.setString(6, o.getR_address());
			int n = ps.executeUpdate();
			AddSuccess = (n==1);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.closeCon(con, ps);
		}
		return AddSuccess;
	}
	
	public ArrayList<Order> getAllOrder()
	{
		ArrayList<Order> orders = new ArrayList<Order>();
		Connection con = null;
		PreparedStatement ps = null;
		try {
			String sql="select * from tb_reservation";
			con = JDBCUtil.getCon();
			ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				Order order = new Order(rs.getInt("list_id"),rs.getString("user_name"),rs.getString("photographer_name"),rs.getString("makeuper_name"),rs.getString("submit_time"),rs.getString("r_content"),rs.getString("r_date"),rs.getString("r_address"));
				orders.add(order);
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		finally{
			JDBCUtil.closeCon(con, ps);
		}
		
		return orders;
		
	}
}
