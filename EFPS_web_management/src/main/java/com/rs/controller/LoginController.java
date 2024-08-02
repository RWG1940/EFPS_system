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

    @PostMapping("/auto-login")
    public Result autoLogin(@RequestParam String token){
        log.info("员工登录：{}",token);
        try {
            Map<String,Object> claims;
            claims = JwtUtils.parseJwt(token);
            String username = (String)claims.get("username");
            Emp emp = new Emp();
            emp.seteUsername(username);
            if (username != null && empService.getEmp(emp) != null) {
                if (JwtUtils.validateToken(token)) {
                    return Result.success("自动登录成功");
                } else {
                    return Result.error("令牌已过期或无效");
                }
            } else {
                return Result.error("用户不存在");
            }
        } catch (Exception e) {
            log.error("自动登录失败：{}", e.getMessage());
            return Result.error("自动登录失败");
        }
    }

}
