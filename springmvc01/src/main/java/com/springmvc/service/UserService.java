package com.springmvc.service;

import com.springmvc.domain.User;

import java.util.Map;

public interface UserService {

    /**
     * 添加注册用户
     */
    Map<String, Object> registUser(User user);

    /**
     * 用户登录
     */
   Object loginUser(User user);

}
