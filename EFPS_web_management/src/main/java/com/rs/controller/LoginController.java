package com.rs.controller;

import com.rs.domain.Emp;
import com.rs.exception.pojo.BizException;
import com.rs.exception.pojo.ExceptionEnum;
import com.rs.exception.pojo.vo.ResultResponse;
import com.rs.service.EmpService;
import com.rs.utils.JwtUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * @FileName: LoginController
 * @Date: 2024/7/27:22:01
 * @Description: 登录控制器
 * @Author: RWG
 */
@RestController
@Slf4j
@RequestMapping("/login")
@CrossOrigin(origins = "*") // 允许所有请求源
public class LoginController {
    @Autowired
    private EmpService empService;

    // 账号密码登录
    @PostMapping
    public ResultResponse login(@RequestBody Emp emp) {
        log.info("账号密码登录：{}", emp);
        String token = empService.login(emp);
        if (token != null) {
            return ResultResponse.success(token);
        } else {
            throw new BizException(ExceptionEnum.NOT_FOUND);
        }
    }

    // 功能：1.自动登录 2.取得登录用户信息
    @PostMapping("/auto-login")
    public ResultResponse autoLogin(HttpServletRequest request) {
        // 从请求头中获取 Authorization 参数
        String token = request.getHeader("Authorization");

        if (token == null || token.isEmpty()) {
            throw new BizException(ExceptionEnum.NOT_FOUND);
        }
        String shortenedToken = token.length() > 10 ? token.substring(0, 5) + "***" + token.substring(token.length() - 5) : token;
        log.info("自动登录：{}", shortenedToken);
        UserDetails userDetails = empService.getEmpBytoken(token);

        // 如果用户存在，返回用户信息
        if (userDetails != null) {
            return ResultResponse.success(userDetails);
        } else {
            throw new BizException(ExceptionEnum.NOT_FOUND);
        }
    }

}
