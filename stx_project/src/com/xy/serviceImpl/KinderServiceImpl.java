package com.xy.serviceImpl;

import com.xy.userdao.KinderDao;
import com.xy.userDaoImpl.KinderDaoImpl;
import com.xy.entity.Kinder;
import com.xy.service.KinderService;

public class KinderServiceImpl implements KinderService {

	public boolean addKinder(Kinder kp) {
		Kinder kp1 = new Kinder();
		KinderDao kinderDao = new KinderDaoImpl();
		if (kinderDao.addKP(kp1) > 0) {
			System.out.println("已经存入bolg数据");
			return true;
		}
		return false;
	}
	
	public boolean changeKinder(Kinder kp) {
		Kinder kp1 = new Kinder();
		KinderDao kinderDao = new KinderDaoImpl();
		if (kinderDao.changeKP(kp1) > 0) {
			System.out.println("修改成功bolg数据");
			return true;
		}
		return false;	
	}
	
	public boolean deleteKinder(Kinder kp) {
		Kinder kp1 = new Kinder();
		KinderDao kinderDao = new KinderDaoImpl();
		if (kinderDao.deleteKP(kp1) > 0) {
			System.out.println("删除blog数据");
			return true;
		}
		return false;
	}
}