package com.xy.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





import com.xy.entity.MyUser;
import com.xy.entity.Order;
import com.xy.entity.Work;
import com.xy.userdao.AddOrderDao;
import com.xy.userdao.MyUserDao;
import com.xy.userdao.WorkStorageDao;


public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		/* 允许跨域的主机地址 */ 
//		response.setHeader("Access-Control-Allow-Origin", "*");  
//		/* 允许跨域的请求方法GET, POST, HEAD 等 */ 
//		response.setHeader("Access-Control-Allow-Methods", "*");  
//		/* 重新预检验跨域的缓存时间 (s) */ 
//		response.setHeader("Access-Control-Max-Age", "3600");  
//		/* 允许跨域的请求头 */ 
//		response.setHeader("Access-Control-Allow-Headers", "*"); 
//		/* 是否携带cookie */
//		response.setHeader("Access-Control-Allow-Credentials", "true");  
//		
		
		
		//1.获取用户数据
		String username = request.getParameter("user_name");
		String password = request.getParameter("pass_word");
		
		System.out.println(username+"--dasa--"+password);
		//2.判断用户是否存在
		MyUserDao userDao = new MyUserDao();
		MyUser u = userDao.queryMyUser(new MyUser(username, password));
		
		if(u != null)
		{
			//如果是普通用户登录
			if(Integer.parseInt(u.getUser_name()) == 256){
			//登录成功后，将username（和其他相关信息）存入Session
			request.getSession().setAttribute("user_id", u.getUser_Id());
			request.getSession().setAttribute("user_name",u.getUser_name());
			WorkStorageDao work=new WorkStorageDao();
			ArrayList<Work> list=work.getAllWork();
			request.getSession().setAttribute("works", list);
			for(Work i:list){
				System.out.println(i);
			}
			AddOrderDao aod = new AddOrderDao();
			ArrayList<Order> orders = aod.getAllOrder();
			request.getSession().setAttribute("orders", orders);
//			ArrayList<MyUser> uss = userDao.getAllUsers();
//			request.getSession().setAttribute("users", uss);
			request.getRequestDispatcher("admin/index2.jsp").forward(request, response);
//			response.sendRedirect(request.getContextPath()+"/admin/index.jsp");
			}
			//如果是管理员登录
			else if(Integer.parseInt(u.getUser_name()) == 007)
			{
				//登录成功后，将username（和其他相关信息）存入Session
				request.getSession().setAttribute("user_id", u.getUser_Id());
				request.getSession().setAttribute("user_name",u.getUser_name());
				ArrayList<MyUser> uss = userDao.getAllUsers();
				
				WorkStorageDao work=new WorkStorageDao();
				ArrayList<Work> list=work.getAllWork();
				
				AddOrderDao aod = new AddOrderDao();
				ArrayList<Order> orders = aod.getAllOrder();
				request.getSession().setAttribute("works", list);
				request.getSession().setAttribute("users", uss);
				request.getSession().setAttribute("orders", orders);
				request.getRequestDispatcher("/admin/index.jsp").forward(request, response);
			}
		}
		else
		{
			response.sendRedirect(request.getContextPath()+"/login.jsp");
//			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

}
