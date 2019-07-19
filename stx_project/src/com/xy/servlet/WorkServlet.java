package com.xy.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xy.entity.MyUser;
import com.xy.entity.Work;
import com.xy.userdao.WorkStorageDao;

/**
 * Servlet implementation class WorkServlet
 */
public class WorkServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public WorkServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
//		String user_name = (String)request.getSession().getAttribute("user_name");
//		String work_title = request.getParameter("work_title");
		String work_content = request.getParameter("work_content");
		//将接收到的数据存入数据库
		System.out.println(work_content);
		WorkStorageDao wsd = new WorkStorageDao();
		boolean success = wsd.StorageWork(new Work(work_content));
		//文章存入成功
		if(success == true)
		{
			System.out.println("success");
			ArrayList<Work> ws = WorkStorageDao.getAllWork();
			request.getSession().setAttribute("works",ws);
			request.getRequestDispatcher("/admin/index.jsp").forward(request, response);
		}
		else{
			System.out.println("失败！");
		}
	}

}
