package com.springmvc.dao;

import com.springmvc.domain.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {

    /**
     * 检查用户名是否存在
     * @return
     */
    Integer seleceUserExist(String user_name);

    /**
     * 登录
     */
    User login_User(User user);

    /**
     * 注册
     * @return
     */
    boolean regist_User(User user);

}
