package com.xy.entity;


/**
 * @author lnl Blog:博客
 */
public class Kinder {
	private String work_id;// 文章id
	private String user_name;// 发布者
	private String work_type;// 类别
	private String work_publishtime;// 创建时间
	private String work_title;// 文章名
	private String work_content;// 内容

	public Kinder() {
	}

	public Kinder(String work_id) {
		super();
		this.work_id = work_id;
	}

	public Kinder(String work_id, String user_name) {
		super();
		this.work_id = work_id;
		this.user_name = user_name;
	}

	public Kinder(String user_name, String work_type, String work_publishtime, String work_title, String work_content) {
		super();
		this.user_name = user_name;
		this.work_type = work_type;
		this.work_publishtime = work_publishtime;
		this.work_title = work_title;
		this.work_content = work_content;
	}

	public String getWork_id() {
		return work_id;
	}

	public void setWork_id(String work_id) {
		this.work_id = work_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getWork_type() {
		return work_type;
	}

	public void setWork_type(String work_type) {
		this.work_type = work_type;
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
}