package com.qfedu.controller;

import com.qfedu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.qfedu.vo.ResultVo;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/login.do")
    @ResponseBody
    private ResultVo findUserByName(String username, String password) {
        return ResultVo.setOK(userService.findUserByName(username, password));
    }

    @RequestMapping("/regist.do")
    @ResponseBody
    private ResultVo addUser(String username, String password) {
        return ResultVo.setOK(userService.addUser(username, password));
    }
}
