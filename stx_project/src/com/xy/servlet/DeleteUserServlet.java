package com.xy.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xy.entity.MyUser;
import com.xy.service.DeleteUserService;
import com.xy.userdao.MyUserDao;

/**
 * 用户管理界面的删除用户
 */
public class DeleteUserServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//获取页面点击删除后 获取该用户的id
		int user_id = Integer.parseInt(request.getParameter("user_id"));
		
		DeleteUserService deluser = new DeleteUserService();
		boolean isDel = deluser.delUser(new MyUser(user_id));
		
		if(isDel = true)
		{
			//删除成功,再将所有的用户信息发送到页面（刷新）
			System.out.println("删除成功");
			MyUserDao userDao = new MyUserDao();
			ArrayList<MyUser> users = userDao.getAllUsers();
			request.setAttribute("users", users);
		}
		else{
			//删除失败
			System.out.println("删除失败");
		}
	}

}
