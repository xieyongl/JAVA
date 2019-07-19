package com.xy.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xy.entity.Order;
import com.xy.entity.Work;
import com.xy.service.AddOrderService;
import com.xy.userdao.AddOrderDao;
import com.xy.userdao.WorkStorageDao;

/**
 * 预约管理里面的新增预约
 *
 */
//@SuppressWarnings("serial")
public class AddOrderServlet extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//接受数据
		String user_name = (String)request.getSession().getAttribute("user_name");
		String photographer_name = request.getParameter("photographer_name");
		String makeuper_name = request.getParameter("makeuper_name");
		String r_date = request.getParameter("r_date");//r_date为约拍的时间
		String r_content = request.getParameter("r_content");//r_content为约拍的备注
		String r_address = request.getParameter("r_address");
	
		System.out.println(user_name+photographer_name+makeuper_name+r_date+r_content+r_address);
		AddOrderService as = new AddOrderService();
		boolean AddSuccess = as.isAdd(new Order(user_name,photographer_name,makeuper_name,r_content,r_date,r_address));
		//为真，表示增加预约单成功
		if(AddSuccess = true)
		{
			AddOrderDao ad = new AddOrderDao();
			ArrayList<Order> orders = ad.getAllOrder();
			request.getSession().setAttribute("orders",orders);
			request.getRequestDispatcher("/stx_project/admin/reservation.jsp");
		}else{
			//增加预约单失败
		}
		
	}

}
