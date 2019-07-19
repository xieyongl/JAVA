package com.xy.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xy.service.UserService;
import com.xy.serviceImpl.UserServiceImpl;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 获取页面输入值
		String username = request.getParameter("user_name");
		String password = request.getParameter("pass_word");
		String email = request.getParameter("user_email");
		String phone_number = request.getParameter("phone_number");
		System.out.println(username + " " + password + " " + email + " " + phone_number);
		UserService userService = new UserServiceImpl();
		// 提交数据
		if (userService.user_nameInfo(username)) {// 判断用户名是否存在
			System.out.println("此用户名不存在，可以注册");
			if (userService.doRegister(username, password, email, phone_number)) {
				// 提交成功
				request.setAttribute("msg", "noError");
				System.out.println("提交成功");
			} else {
				request.setAttribute("msg", "addError");
				System.out.println("提交失败");
			}
			// 请求转发到某个页面
			request.getRequestDispatcher("").forward(request, response);
		}
	}

}
