package com.xy.userdao;

import java.util.ArrayList;

import com.xy.entity.Kinder;
import com.xy.entity.PageBean;

public interface KinderDao {
	public int addKP(Kinder kp);
	public int changeKP(Kinder kp);
	public int deleteKP(Kinder kp);
	public ArrayList<Kinder> getALLKinder();
	public ArrayList<Kinder> getALLPhotosByPaging(PageBean pb);
}
