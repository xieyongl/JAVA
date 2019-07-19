package com.xy.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xy.entity.MyUser;
import com.xy.userdao.MyUserDao;
import com.xy.util.JDBCUtil;
import com.xy.util.MD5Util;

/**
 * Servlet implementation class RegistServlet
 */
public class RegistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RegistServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//获取前端页面的数据
		String user_name = request.getParameter("user_name");
		String pass_word = request.getParameter("pass_word");
		String phone_number = request.getParameter("phone_number");
		String user_email = request.getParameter("user_email");
		String regist_code = request.getParameter("regist_code");
		//连接数据库
		Connection con = null;
		PreparedStatement st = null;
		boolean registsuccess = false;
		try {
			//查询数据库用户是否存在
			String sql = "select * from tb_user where user_name=?";
			con = JDBCUtil.getCon();
			con = JDBCUtil.getCon();
			st = con.prepareStatement(sql);
			st.setString(1, user_name);
			st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			if(!rs.next())
			{
				//用户不存在，可以直接注册
				//如果密码与确认密码不一致，直接返回到注册页面
//				if(pass_word != pass_word1)
//				{
//					request.getRequestDispatcher("login.jsp").forward(request, response);
//				}
				st = con.prepareStatement("insert into tb_user (user_name,pass_word,phone_number,user_email,regist_code) values (user_name=?,pass_word=?,phone_number=?,user_email=?,regist_code=?)");
				st.setString(1, user_name);
				st.setString(2, pass_word);
				st.setString(3, phone_number);
				st.setString(4, user_email);
				st.setString(5, regist_code);
				int n = st.executeUpdate();
				registsuccess = n == 1;
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		finally{
			JDBCUtil.closeCon(con, st);
		}
		if(registsuccess)
		{
			//注册成功
			response.getWriter().write(1); //1代表注册成功
//			request.setAttribute("success","regist is success!");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		else{
			//注册失败
//			request.setAttribute("errorMsg", "regist is not success");
			response.getWriter().append("用户已存在！");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
				
	}

}
