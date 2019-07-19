package com.xy.userdao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.spi.DirStateFactory.Result;

import java.sql.Connection;
import com.xy.entity.Work;
import com.xy.util.JDBCUtil;

public class WorkStorageDao {

	/**
	 * 存入文章数据
	 * @param wo
	 * @return
	 */
	public boolean StorageWork(Work wo)
	{
		Connection con = null;
		PreparedStatement ps = null;
		boolean ok = false;
		try{
			con = JDBCUtil.getCon();
			String sql = "UPDATE tb_work SET work_content=? WHERE work_id='4' ";
			ps = con.prepareStatement(sql);
//			ps.setInt(1, wo.getWork_id());
//			ps.setString(2, wo.getWork_title());
			ps.setString(1, wo.getWork_content());
			int n = ps.executeUpdate();
			ok = (n == 1);
//			if(rs.next()){
//				work = new Work(rs.getString("user_name"),rs.getString("work_title"),rs.getString("work_content"));
//			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		finally{
			JDBCUtil.closeCon(con, ps);
		}
		return ok;
	}
	
	/**
	 * 查询所有文章
	 * @return
	 */
	public static ArrayList<Work> getAllWork(){
		
		ArrayList<Work> works = new ArrayList<>();
		Connection con = null;
		PreparedStatement ps = null;
		
		try {
			String sql = "select * from tb_work ";
			con = JDBCUtil.getCon();
			ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				Work work = new Work(rs.getInt("work_id"),rs.getString("user_name"),rs.getString("work_publishtime"),rs.getString("work_title"),rs.getString("work_content"));
				works.add(work);
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		finally{
			JDBCUtil.closeCon(con, ps); 
		}
		
		
		return works;
	}
}
