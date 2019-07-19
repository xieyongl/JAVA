package com.xy.service;

import com.xy.entity.Kinder;

public interface KinderService {
	public boolean addKinder(Kinder kp);
	public boolean changeKinder(Kinder kp);//id+name
	public boolean deleteKinder(Kinder kp);//id
}
