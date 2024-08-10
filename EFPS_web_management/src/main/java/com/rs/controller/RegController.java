package com.rs.controller;

import com.rs.domain.Emp;
import com.rs.exception.pojo.vo.ResultResponse;
import com.rs.service.EmpService;
import com.rs.utils.JwtUtils;
import com.rs.utils.TimeUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
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
    @Autowired
    private PasswordEncoder passwordEncoder;
    @PostMapping
    public ResultResponse reg(@RequestBody Emp emp) {
        log.info("员工注册：{}", emp);
        // 查找用户是否已存在
        Emp e = empService.getEmp(emp);
        if (e != null) {
            return ResultResponse.error("用户已存在");
        }
        // 加密密码
        emp.setePassword(passwordEncoder.encode(emp.getePassword()));
        // 插入数据
        if(empService.createEmp(emp) != 1) {
            return ResultResponse.error("注册失败");
        }
        // 重新构建emp实体 查找创建后的emp实体
        Emp old_e = new Emp();
        old_e.seteUsername(emp.geteUsername());
        old_e.setePassword(emp.getePassword());
        Emp new_e = empService.getEmp(old_e);
        // 设置创建时间和更新时间
        new_e.seteUpdatetime(timeUtil.getCurrentTimestamp());
        new_e.seteCreatetime(timeUtil.getCurrentTimestamp());
        empService.updateEmp(new_e);
        // 获取token
        Map<String, Object> claims = new HashMap<>();
        claims.put("id", new_e.getId());
        claims.put("name", new_e.geteName());
        claims.put("username", new_e.geteUsername());
        claims.put("avatar",new_e.geteAvatarpath());
        String jwt = JwtUtils.generateJwt(claims,null);
        return ResultResponse.success(jwt);
    }

}
