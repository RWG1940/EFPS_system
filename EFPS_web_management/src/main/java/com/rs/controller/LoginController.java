package com.rs.controller;

import com.rs.domain.Emp;
import com.rs.domain.Result;
import com.rs.service.EmpService;
import com.rs.utils.JwtUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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

    @PostMapping
    public Result login(@RequestBody Emp emp){
        log.info("员工登录：{}",emp);
        Emp e = empService.getEmp(emp);
        if (e != null){
            Map<String,Object> claims = new HashMap<>();
            claims.put("id",e.getId());
            claims.put("name",e.geteName());
            claims.put("username",e.geteUsername());

            String jwt = JwtUtils.generateJwt(claims);
            return Result.success(jwt);
        }
        return Result.error("用户名或密码错误");

    }
}
