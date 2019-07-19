package com.xy.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xy.entity.MyUser;
import com.xy.userdao.MyUserDao;



public class AllUserServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MyUserDao userDao = new MyUserDao();
		
		ArrayList<MyUser> users = userDao.getAllUsers();
		
		//返回所有用户信息
		request.getSession().setAttribute("users", users);
		
	}

}
