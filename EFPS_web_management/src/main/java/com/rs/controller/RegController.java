package com.rs.controller;

import com.rs.domain.Emp;
import com.rs.domain.vo.LoginUserDetail;
import com.rs.exception.pojo.BizException;
import com.rs.exception.pojo.vo.ResultResponse;
import com.rs.service.EmpService;
import com.rs.utils.JwtUtils;
import com.rs.utils.TimeUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * @FileName: RegController
 * @Date: 2024/7/28:11:09
 * @Description: 注册控制器
 * @Author: RWG
 */
@RestController
@Slf4j
@RequestMapping("/reg")
public class RegController {
    @Autowired
    private EmpService empService;

    @PostMapping
    public ResultResponse reg(@RequestBody Emp emp) {
        log.info("员工注册：{}", emp.geteUsername());
        return empService.register(emp);
    }
}
