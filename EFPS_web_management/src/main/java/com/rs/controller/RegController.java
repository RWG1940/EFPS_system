package com.rs.controller;

import com.rs.domain.Emp;
import com.rs.exception.pojo.vo.ResultResponse;
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
public class RegController {
    @Autowired
    private EmpService empService;

    @PostMapping
    public ResultResponse reg(@RequestBody Emp emp) {
        log.info("员工注册：{}", emp.geteUsername());
        return empService.register(emp);
    }
}
