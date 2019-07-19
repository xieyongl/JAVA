package com.xy.serviceImpl;

import com.xy.userdao.UserDao;
import com.xy.userDaoImpl.UserDaoImpl;
import com.xy.entity.MyUser;
import com.xy.service.UserService;
import com.xy.util.CodeUtil;
import com.xy.util.MailUtil;

public class UserServiceImpl implements UserService {
	/**
	 * 返回true：存入数据库，已发送邮箱并获取激活码 false：没有存入数据库
	 */
	@Override
	public boolean doRegister(String userName, String password, String email, String phone_number) {
		// 这里可以验证各字段是否为空
		// 利用正则表达式（可改进）验证邮箱是否符合邮箱的格式
		if (!email.matches("^\\w+@(\\w+\\.)+\\w+$")) {
			return false;
		}
		// 生成激活码
		String code = CodeUtil.generateUniqueCode();
		MyUser user = new MyUser(userName, password, email, code, phone_number);
		UserDao userDao = new UserDaoImpl();
		System.out.println(email);
		// 判断用户是否保存到数据库
		if (userDao.save(user) > 0) {
			System.out.println(email);
			// 保存成功则通过线程的方式给用户发送一封邮件
			new Thread(new MailUtil(email, code)).start();
			;
			return true;
		}
		return false;
	}

	/**
	 * 判断用户名和密码是否匹配，user_name+pass_word。>0即成功 queryUser 返回 true 表示登录成功 false
	 * 表示登录失败，用户名和密码不匹配
	 */
	public boolean queryUser(String user_name, String pass_word) {
		MyUser user = new MyUser(user_name, pass_word);
		UserDao userDao = new UserDaoImpl();
		if (userDao.loginUP(user) > 0) {
			System.out.println("数据库存在该用户名和密码");
			return true;
		}
		return false;
	}

	/**
	 * //判断用户名是否存在,user_name。>0即存在用户 user_nameInfo 返回 true 表示用户名可用 false
	 * 表示用户名已存在，请重新输入密码
	 */
	public boolean user_nameInfo(String user_name) {
		MyUser user = new MyUser(user_name);
		UserDao userDao = new UserDaoImpl();
		if (userDao.existU(user) == 0) {
			return true;
		}
		return false;
	}

	// @Override
	// public boolean activeUser(String code) {
	// UserDao userDao=new UserDaoImpl();
	// if(userDao.activeUser(code)>0){
	// return true;
	// }else{
	// return false;
	// }
	// }

	// @Override
	// public boolean saveArtcle() {
	// // TODO Auto-generated method stub
	// return false;
	// }
}