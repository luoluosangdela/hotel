package com.qfedu.service;

import com.qfedu.pojo.User;

public interface UserService {
    User findUserByName(String username, String password);

    int addUser(String username, String password);
}
