package com.xy.userDaoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.xy.userdao.KinderDao;
import com.xy.entity.Kinder;
import com.xy.entity.PageBean;
import com.xy.util.JDBCUtil;
import com.xy.util.SQLPageUtil;

public class KinderDaoImpl implements KinderDao {

	public int addKP(Kinder kp) {
		// 存储数据
		int num = 0;
		try {
			Connection conn = JDBCUtil.getCon();
			String sql = "insert into tb_work(user_name,work_type,work_publishtime,work_title,work_content) values(?,?,?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, kp.getUser_name());
			pstmt.setString(2, kp.getWork_type());
			pstmt.setString(3, kp.getWork_publishtime());
			pstmt.setString(4, kp.getWork_title());
			pstmt.setString(5, kp.getWork_content());
			num = pstmt.executeUpdate();
			JDBCUtil.close(conn, pstmt, null);
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
			return -1;
		}
		return num;
	}

	public int changeKP(Kinder kp) {//id+name的构造函数
		// 修改数据
		int num = 0;
		try {
			Connection conn = JDBCUtil.getCon();
			String sql = "update tb_work set work_title=?,work_content=? where id=? and user_name=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, kp.getWork_title());
			pstmt.setString(2, kp.getWork_content());
			pstmt.setString(3, kp.getWork_id());
			pstmt.setString(4, kp.getUser_name());
			num = pstmt.executeUpdate();
			JDBCUtil.close(conn, pstmt, null);
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
			return -1;
		}
		return num;
	}
	
	public int deleteKP(Kinder kp) {//id构造函数
		int num = 0;
		try {
			Connection conn = JDBCUtil.getCon();
			String sql = "delete from tb_work where work_id=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, kp.getWork_id());
			num = pstmt.executeUpdate();
			JDBCUtil.close(conn, pstmt, null);
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
			return -1;
		}
		return num;
	}
	
	public ArrayList<Kinder> getALLKinder() {
		ArrayList<Kinder> kps = new ArrayList<Kinder>();
		try {
			Connection conn = JDBCUtil.getCon();
			// 返回所有的用户信息
			conn = JDBCUtil.getCon();
			String sql = "select work_title,user_name,work_type,work_publishtime from tb_work";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				Kinder kp = new Kinder();
				kps.add(kp);
			}
			JDBCUtil.close(conn, pstmt, null);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return kps;
	}

	public ArrayList<Kinder> getALLPhotosByPaging(PageBean pb) {
		Connection con = null;
		PreparedStatement st = null;
		// 返回PageBean中需要返回分页数量的用户信息集合
		ArrayList<Kinder> kps = new ArrayList<Kinder>();
		try {
			con = JDBCUtil.getCon();
			// 分页结果利用SQLPageUtil对sql进行分页操作即可，不影响其他过程
			// 大家可以跟getALLPhotos()进行对比
			String sql = "select work_title,user_name,work_type,work_publishtime from tb_work";
			String sqlByPage = SQLPageUtil.getPageSql(sql, pb);
			st = con.prepareStatement(sqlByPage);
			ResultSet rs = st.executeQuery();
			while (rs.next()) {
				Kinder kp = new Kinder();
				kps.add(kp);
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(con, st, null);
		}
		return kps;
	}
}
