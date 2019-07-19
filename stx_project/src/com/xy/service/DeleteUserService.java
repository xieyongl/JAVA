package com.xy.service;

import com.xy.entity.MyUser;
import com.xy.userdao.DeleteUserDao;

public class DeleteUserService {

	@SuppressWarnings("unused")
	public boolean delUser(MyUser user) {

		boolean isDel = false;
		// 判断该用户是否存在
		DeleteUserDao du = new DeleteUserDao();
		boolean exist = du.isExist(user.getUser_Id());
		if (exist = true) {
			// 存在，进行删除操作
			if (du.deluser(user.getUser_Id())) {
				isDel = true;
			}
		} else {
			// 不存在
			System.out.println("用户不存在，操作失败");
		}
		return isDel;
	}
}
