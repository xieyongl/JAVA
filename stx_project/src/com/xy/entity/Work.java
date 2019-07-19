package com.xy.entity;

public class Work {
	
	private int work_id;
	private String user_name;
	private String work_publishtime;
	private String work_title;
	private String work_content;
	
	
	public Work(String work_content)
	{
		this.work_content = work_content;
	}
	
	public Work(String user_name,String work_content) {
		this.user_name = user_name;
		this.work_content = work_content;
	}
	
	
	public Work(String user_name,String work_title, String work_content) {
		this.user_name = user_name;
		this.work_title = work_title;
		this.work_content = work_content;
	}
	
	public Work(int work_id, String user_name,String work_publishtime, String work_title, String work_content) {
		super();
		this.work_id = work_id;
		this.user_name = user_name;
		this.work_publishtime = work_publishtime;
		this.work_title = work_title;
		this.work_content = work_content;
	}



	public int getWork_id() {
		return work_id;
	}
	public void setWork_id(int work_id) {
		this.work_id = work_id;
	}
	public String getWork_publishtime() {
		return work_publishtime;
	}
	public void setWork_publishtime(String work_publishtime) {
		this.work_publishtime = work_publishtime;
	}
	public String getWork_title() {
		return work_title;
	}
	public void setWork_title(String work_title) {
		this.work_title = work_title;
	}
	public String getWork_content() {
		return work_content;
	}
	public void setWork_content(String work_content) {
		this.work_content = work_content;
	}


	public String getUser_name() {
		return user_name;
	}


	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	@Override
	public String toString() {
		return "Work [work_id=" + work_id + ", user_name=" + user_name + ", work_publishtime=" + work_publishtime
				+ ", work_title=" + work_title + ", work_content=" + work_content + "]";
	}
	
	
	
}
