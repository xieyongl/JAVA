package com.xy.service;

public interface UserService {
	// 判断是否存入数据库，是否发送邮箱并获取激活码
	boolean doRegister(String userName, String password, String email, String phone_number);

	// boolean activeUser(String code);
	// boolean saveArtcle();
	// queryUser 返回 true 表示登录成功
	boolean queryUser(String user_name, String pass_word);

	// user_nameInfo 返回 true 表示用户名可用
	boolean user_nameInfo(String user_name);

}
