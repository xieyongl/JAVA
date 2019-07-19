package com.xy.service;

import com.xy.entity.MyUser;
import com.xy.userdao.ResetPasdDao;

public class ResetPasdService {
	
	public boolean resetPassword(MyUser user,String newpass_word)
	{
		ResetPasdDao rp = new ResetPasdDao();
		//如果重置密码成功，返回true
		if(rp.isChangePassWord(user))
		{
//			boolean n = rp.dealPassword(newpass_word);
			return rp.dealPassword(newpass_word,user);
		}
		return false;
	}

}
