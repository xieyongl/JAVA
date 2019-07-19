package com.xy.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xy.entity.MyUser;
import com.xy.service.ResetPasdService;

/**
 * Servlet implementation class ResetPasdServlet
 * 
 * 重置密码
 */
public class ResetPasdServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//获取前端数据
		String user_name = request.getParameter("user_name");
		String pass_word = request.getParameter("pass_word");
		String newpass_word = request.getParameter("newpass_word");
		
		MyUser user = new MyUser(user_name,pass_word);
		ResetPasdService rp = new ResetPasdService(); 
		boolean resetsuccess = rp.resetPassword(user,newpass_word);
	
		if(resetsuccess)
		{
			//修改成功
			request.setAttribute("msg", "修改成功!");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
//			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		else
		{
			//修改失败
			request.setAttribute("msg", "修改失败!");
			
		}
	
	}

}
