package com.rs.controller;

import com.rs.domain.Emp;
import com.rs.domain.Result;
import com.rs.service.EmpService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


/**
 * @FileName: RegController
 * @Date: 2024/7/28:11:09
 * @Description: 注册控制器
 * @Author: RWG
 */
@RestController
@Slf4j
@RequestMapping("/reg")
@CrossOrigin(origins = "*") // 允许所有请求源
public class RegController {
    @Autowired
    private EmpService empService;

    @PostMapping
    public Result reg(@RequestBody Emp emp){
        log.info("员工注册：{}",emp);
        Emp e = empService.getEmp(emp);
        if (e != null){
            return Result.error("用户已存在");
        }
        empService.createEmp(emp);
        return Result.success("注册成功！");
    }

}
