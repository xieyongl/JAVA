package com.xy.entity;


public class MyUser {

	private int user_id;
	private String user_name;
	private String pass_word;
	private int type_id;
	private String user_email;
	private String user_registered;
	private String phone_number;
	private String regist_code;
	
	public String getRegist_code() {
		return regist_code;
	}

	public void setRegist_code(String regist_code) {
		this.regist_code = regist_code;
	}

	public MyUser(int user_id)
	{
		this.user_id = user_id;
	}
	
	public MyUser(String user_name)
	{
		this.user_name = user_name;
	}
	
	public MyUser(String user_name,String pass_word)
	{
		this.user_name = user_name;
		this.pass_word = pass_word;
	}
	
	public MyUser(String user_name, String pass_word, String user_email, String regist_code, String phone_number) {
		super();
		this.user_name = user_name;
		this.pass_word = pass_word;
		this.user_email = user_email;
		this.regist_code = regist_code;
		this.phone_number = phone_number;
	}
	
	public MyUser(int user_id,String user_name,String pass_word, int type_id,String user_email,String user_registered,String phone_number)
	{
		this.user_id = user_id;
		this.user_name = user_name;
		this.pass_word = pass_word;
		this.type_id = type_id;
		this.user_email = user_email;
		this.user_registered = user_registered;
		this.phone_number = phone_number;
	}
	
	
	
	public int getUser_Id() {
		return user_id;
	}
	public void setUser_Id(int user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getPass_word() {
		return pass_word;
	}
	public void setPass_word(String pass_word) {
		this.pass_word = pass_word;
	}
	public int getType_id() {
		return type_id;
	}
	public void setType_id(int type_id) {
		this.type_id = type_id;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getuser_registered() {
		return user_registered;
	}
	public void setuser_registered(String user_registtime) {
		this.user_registered = user_registtime;
	}

	public String getPhone_number() {
		return phone_number;
	}

	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	
}
