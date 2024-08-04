package com.rs.controller;

import com.rs.domain.Emp;
import com.rs.domain.Result;
import com.rs.service.EmpService;
import com.rs.utils.JwtUtils;
import com.rs.utils.TimeUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
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
@CrossOrigin(origins = "*") // 允许所有请求源
public class RegController {
    @Autowired
    private EmpService empService;
    @Autowired
    private TimeUtil timeUtil;

    @PostMapping
    public Result reg(@RequestBody Emp emp) {
        log.info("员工注册：{}", emp);
        Emp e = empService.getEmp(emp);
        if (e != null) {
            return Result.error("用户已存在");
        }
        if(empService.createEmp(emp) == 1) {
            Emp old_e = new Emp();
            old_e.seteUsername(emp.geteUsername());
            old_e.setePassword(emp.getePassword());
            Emp new_e = empService.getEmp(old_e);
            new_e.seteUpdatetime(timeUtil.getCurrentTimestamp());
            new_e.seteCreatetime(timeUtil.getCurrentTimestamp());
            empService.updateEmp(new_e);
            // 获取token
            Map<String, Object> claims = new HashMap<>();
            claims.put("id", new_e.getId());
            claims.put("name", new_e.geteName());
            claims.put("username", new_e.geteUsername());
            claims.put("avatar",new_e.geteAvatarpath());
            String jwt = JwtUtils.generateJwt(claims);
            return Result.success(jwt);
        }
        return Result.error("注册失败");
    }

}
