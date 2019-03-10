package com.qfedu.serviceImpl;

import com.qfedu.dao.UserMapper;
import com.qfedu.pojo.User;
import com.qfedu.service.UserService;
import com.qfedu.util.EncryptUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userDao;

    @Override
    public User findUserByName(String username, String password) {
        User user = userDao.findUserByName(username);
        if (user == null) {
            throw new RuntimeException("用户不存在");
        }
        if (!(user.getPassword()).equals(EncryptUtil.md5Enc(password))) {

            throw new RuntimeException("密码错误");
        }
        return user;
    }

    @Override
    public int addUser(String username, String password) {
        User user = userDao.findUserByName(username);
        if (user != null) {
            throw new RuntimeException("用户名已存在");
        }
        User user1 = new User();
        user1.setUsername(username);
        user1.setPassword(EncryptUtil.md5Enc(password));
        return userDao.insertSelective(user1);
    }
}