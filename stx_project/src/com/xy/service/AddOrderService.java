package com.xy.service;

import com.xy.entity.Order;
import com.xy.userdao.AddOrderDao;

public class AddOrderService {
	
	/**
	 * 是否可以增加
	 */
	public static boolean isAdd(Order o)
	{
		boolean addSuccess = false;
		//判断用户是否是用户，摄影师是否是摄影师
		AddOrderDao ad = new AddOrderDao();
		if(ad.isOrdinaryUser(o) && ad.isPhotographer(o))
		{
			//如果是，则可以增加预约单
			addSuccess = ad.AddOrder(o);
			System.out.println("成功预约！");
		}else{
			System.out.println("用户名或者摄影师名输入错误！");
		}
		
		return addSuccess;
	}
}
