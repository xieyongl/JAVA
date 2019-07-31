package com.springmvc.service;


import com.springmvc.dao.UserMapper;
import com.springmvc.domain.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * 用户业务层
 *
 * @author xy
 */
@Service
public class UserServiceImp implements UserService {

    @Resource
    private UserMapper userMapper;

    /**
     * 用户注册
     *
     * @param user
     * @return
     */
    @Override
    public Map<String, Object> registUser(User user) {
        System.out.println("业务层：注册用户...");
        Map<String, Object> hashMap = new HashMap<>();
        //判断用户是否存在
        if (userMapper.seleceUserExist(user.getUser_name()) == 1) {
            hashMap.put("error", "用户名已经存在，请重新输入！");
        } else {
            //不存在，就可以注册...
            boolean flag = userMapper.regist_User(user);
            //注册是否成功
            if (flag == true) {
                hashMap.put("msg", "注册成功...");
            } else {
                hashMap.put("msg", "注册失败...");
            }
        }
        return hashMap;
    }

    @Override
    public Object loginUser(User user) {

        Map<String ,Object> hashMap = new HashMap<>();
        //判断用户是否存在，如果存在，则进行用户名密码匹配
        if (userMapper.seleceUserExist(user.getUser_name()) == 1) {
            //用户登录
            User us = userMapper.login_User(user);
            if(us != null){
               return us;
            }else{
                hashMap.put("msg","登录失败,请重新登录...");
            }
        }else{ //如果不存在，则返回错误信息
            hashMap.put("err","用户名不存在...");
        }
        return hashMap;

    }
}
