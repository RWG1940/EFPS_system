package com.rs.controller;

import com.rs.domain.Emp;
import com.rs.exception.pojo.BizException;
import com.rs.exception.pojo.ExceptionEnum;
import com.rs.exception.pojo.vo.ResultResponse;
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
    public ResultResponse login(@RequestBody Emp emp) {
        log.info("员工登录：{}", emp);
        Emp e = empService.getEmp(emp);
        if (e != null) {
            Map<String, Object> claims = new HashMap<>();
            claims.put("id", e.getId());
            claims.put("name", e.geteName());
            claims.put("username", e.geteUsername());
            claims.put("avatar", e.geteAvatarpath());
            String jwt = JwtUtils.generateJwt(claims);
            return ResultResponse.success(jwt);
        } else {
            throw new BizException(ExceptionEnum.NOT_FOUND);
        }
    }

    @PostMapping("/auto-login")
    public ResultResponse autoLogin(@RequestParam String token) {
        log.info("员工登录：{}", token);
        try {
            Map<String, Object> claims = JwtUtils.parseJwt(token);
            String username = (String) claims.get("username");
            Emp emp = new Emp();
            emp.seteUsername(username);
            Emp foundEmp = empService.getEmp(emp);
            if (foundEmp != null) {
                if (JwtUtils.validateToken(token)) {
                    return ResultResponse.success(foundEmp);
                } else {
                    throw new BizException(ExceptionEnum.SIGNATURE_NOT_MATCH);
                }
            } else {
                throw new BizException(ExceptionEnum.NOT_FOUND);
            }
        } catch (BizException e) {
            throw e;
        } catch (Exception e) {
            log.error("自动登录失败：{}", e.getMessage(), e);
            throw new BizException(ExceptionEnum.INTERNAL_SERVER_ERROR);
        }
    }
}
