package com.xy.servlet;


import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.RequestContext;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.xy.userdao.KinderDao;
import com.xy.userDaoImpl.KinderDaoImpl;
import com.xy.entity.Kinder;
import com.xy.service.KinderService;
import com.xy.serviceImpl.KinderServiceImpl;
import com.xy.util.DateUtil;

/**
 * Servlet implementation class UpLoadKindFormServlet
 */
public class UploadKindFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UploadKindFormServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Kinder对象用来存储用户上传的信息
		Kinder kp = new Kinder();
		// 下面代码用户处理客户端上传的用户头像操作，其他文件上传一样处理
		boolean isUploadSuccess = false;
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		if (isMultipart) {
			DiskFileItemFactory factory = new DiskFileItemFactory();
			// to-do:这里可以修改要保存文件的目录，webcontent下建的目录
			File file = new File(getServletContext().getRealPath("/uploadfiledir"));
			// end
			// 如果工程里面没有创建uploadfiledir目录，这里通过代码创建出来
			if (!file.exists()) {
				file.mkdirs();
			}
			System.out.println(file.getAbsolutePath());
			factory.setRepository(file);
			ServletFileUpload upload = new ServletFileUpload(factory);
			try {
				List<FileItem> items = upload.parseRequest(request);
				Iterator<FileItem> iter = items.iterator();
				while (iter.hasNext()) {
					// 每次循环处理的都是客户端表单中的一个元素
					// 可能是文件，可能是普通本文输入框
					FileItem item = iter.next();
					if (item.isFormField()) {
						// 处理普通本文输入框
						// 得到输入框的名字item.getFieldName()
						String inputName = item.getFieldName();
						// 得到输入框的值item.getString("utf-8")
						String value = item.getString("utf-8");
						if (inputName.equals("uname")) {
							// 表单中输入框name="uname"的情况
							kp.setUser_name(value);
						} else if (inputName.equals("content")) {
							kp.setWork_content(value);
						}
					} else if (!item.isFormField()) {
						// 处理上传文件的情况
						// 获取上传文件名，并进行文件保存。这里获取的文件的原名
						String fileName = item.getName();
						// 将文件原来名字保存到数据库中
						// kp.setPhotoName(fileName);
						// 下面将文件名进行处理，重命名为"yyyyMMddHHmmss"形式名字
						String newFileName = DateUtil.getTimeFileName(fileName);
						File uploadedFile = new File(file, newFileName);
						// 保存文件到服务器设定的目录下面，示例中即"/uploadfiledir"目录下
						item.write(uploadedFile);
						// 将客户端上传的头像保存在服务器的内部地址保存到数据库中
						// kp.setPhotoUrl("/uploadfiledir/" + newFileName);
						// end
						System.out.println("file upload success");
					}
				}
				isUploadSuccess = true;
			} catch (Exception e) {
				e.printStackTrace();
			}

			// todo:处理上传后的操作
			if (isUploadSuccess) {
				// 文件上传成功，将信息保存到数据库中
				KinderService kpd = new KinderServiceImpl();
				kpd.addKinder(kp);
				// 跳转到显示界面
				request.setAttribute("entity", kp);
				request.getRequestDispatcher("/kindsuc.jsp").forward(request, response);
			} else {
				request.setAttribute("msg", "上传失败");
				request.getRequestDispatcher("/editor.jsp").forward(request, response);
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
