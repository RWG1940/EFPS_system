package com.rs.controller;

import com.rs.domain.Emp;
import com.rs.service.EmpService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @FileName: EmpController
 * @Date: 2024/7/26:17:21
 * @Description: 职员控制器
 * @Author: RWG
 */
@Slf4j
@RestController
@RequestMapping("/emps")
@CrossOrigin(origins = "*") // 允许所有请求源
public class EmpController {

    @Autowired
    private EmpService empService;

    // 获取所有员工
    @GetMapping
    public List<Emp> getAllEmps() {
        log.info("Fetching all employees");
        return empService.getAllEmps();
    }

    // 获取指定 ID 的员工
    @GetMapping("/{id}")
    public Emp getEmpById(@PathVariable Integer id) {
        log.info("Fetching employee with ID: {}", id);
        return empService.getEmpById(id);
    }

    // 创建新员工
    @PostMapping
    public int createEmp(@RequestBody Emp emp) {
        log.info("Creating new employee: {}", emp);
        return empService.createEmp(emp);
    }

    // 更新员工信息
    @PutMapping("/{id}")
    public int updateEmp(@PathVariable Integer id, @RequestBody Emp emp) {
        log.info("Updating employee with ID: {}", id);
        emp.setId(id);
        return empService.updateEmp(emp);
    }

    // 删除指定 ID 的员工
    @DeleteMapping("/{id}")
    public int deleteEmp(@PathVariable Integer id) {
        log.info("Deleting employee with ID: {}", id);
        return empService.deleteEmp(id);
    }

//    员工登录

}
