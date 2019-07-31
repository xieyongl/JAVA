package com.springmvc.controller;

import com.springmvc.domain.User;
import com.springmvc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * 用户控制层
 *
 * @author xy
 */
@RestController
public class UserController {

    @Autowired
    private UserService userService;

    /**
     * 注册用户
     *
     * @param user
     * @return
     */
    @RequestMapping("/regist")
    public Map<String, Object> regist(User user) {
        System.out.println("控制层：注册用户...");
        return userService.registUser(user);
    }

    /**
     * 登录用户
     * @param user
     */
    @RequestMapping("/login")
    public Object login(User user){
        System.out.println("控制层：登录用户");
        return userService.loginUser(user);
    }
}

