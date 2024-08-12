package com.rs.controller;

import com.rs.domain.Emp;
import com.rs.exception.pojo.vo.ResultResponse;
import com.rs.service.EmpService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


/**
 * @FileName: LoginController
 * @Date: 2024/7/27:22:01
 * @Description: 登录控制器
 * @Author: RWG
 */
@RestController
@Slf4j
@RequestMapping("/login")

public class LoginController {
    @Autowired
    private EmpService empService;

    // 账号密码登录
    @PostMapping
    public ResultResponse login(@RequestBody Emp emp) {
        log.info("账号密码登录：{}", emp);
        return empService.login(emp);
    }

    // 功能：1.自动登录 2.取得登录用户信息
    @PostMapping("/auto-login")
    public ResultResponse autoLogin() {
        log.info("token登录");
        return empService.loginByToken();
    }

}
