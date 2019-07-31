package com.springmvc.domain;


import lombok.Data;

@Data
public class User {
    private String user_name;
    private String pass_word;

    public User(){}
    public User(String user_name, String pass_word) {
        this.user_name = user_name;
        this.pass_word = pass_word;
    }
}
