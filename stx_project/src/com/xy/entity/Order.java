package com.xy.entity;

public class Order {

	private int list_id;
	private String user_name;
	private String photographer_name;
	private String makeuper_name;
	private String submit_time;
	private String r_content;
	private String r_date;
	private String r_address;
	
	
	public Order(int list_id, String user_name, String photographer_name, String makeuper_name, String submit_time,
			String r_content, String r_date, String r_address) {
		super();
		this.list_id = list_id;
		this.user_name = user_name;
		this.photographer_name = photographer_name;
		this.makeuper_name = makeuper_name;
		this.submit_time = submit_time;
		this.r_content = r_content;
		this.r_date = r_date;
		this.r_address = r_address;
	}
	
	
	public Order(String user_name, String photographer_name, String makeuper_name, String r_content, String r_date,
			String r_address) {
		super();
		this.user_name = user_name;
		this.photographer_name = photographer_name;
		this.makeuper_name = makeuper_name;
		this.r_content = r_content;
		this.r_date = r_date;
		this.r_address = r_address;
	}
	public int getList_id() {
		return list_id;
	}
	public void setList_id(int list_id) {
		this.list_id = list_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getPhotographer_name() {
		return photographer_name;
	}
	public void setPhotographer_name(String photographer_name) {
		this.photographer_name = photographer_name;
	}
	public String getMakeuper_name() {
		return makeuper_name;
	}
	public void setMakeuper_name(String makeuper_name) {
		this.makeuper_name = makeuper_name;
	}
	public String getSubmit_time() {
		return submit_time;
	}
	public void setSubmit_time(String submit_time) {
		this.submit_time = submit_time;
	}
	public String getR_content() {
		return r_content;
	}
	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	public String getR_date() {
		return r_date;
	}
	public void setR_date(String r_date) {
		this.r_date = r_date;
	}
	public String getR_address() {
		return r_address;
	}
	public void setR_address(String r_address) {
		this.r_address = r_address;
	}


	@Override
	public String toString() {
		return "Order [list_id=" + list_id + ", user_name=" + user_name + ", photographer_name=" + photographer_name
				+ ", makeuper_name=" + makeuper_name + ", submit_time=" + submit_time + ", r_content=" + r_content
				+ ", r_date=" + r_date + ", r_address=" + r_address + "]";
	}
	
	
}
