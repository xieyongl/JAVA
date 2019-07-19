package com.xy.userdao;

import com.xy.entity.Kinder;
import com.xy.entity.MyUser;

public interface UserDao {
	//将接收到的数据存入数据库
	int save(MyUser user);
//	int activeUser(String code);
	int saveBlog(Kinder blog);
	//判断用户名和密码是否匹配，user_name+pass_word。>0即成功
	int loginUP(MyUser user);
	//判断用户名是否存在,user_name。>0即存在用户
	int existU(MyUser user); 
}
