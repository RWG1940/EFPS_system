package com.rs.controller;

import com.rs.domain.Emp;
import com.rs.domain.PageBean;
import com.rs.domain.Result;
import com.rs.service.EmpService;
import com.rs.utils.TimeUtil;
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
    @Autowired
    private TimeUtil timeUtil;

    // 获取所有员工
    @GetMapping
    public Result getAllEmps() {
        log.info("Fetching all employees");
        List<Emp> emps = empService.getAllEmps();
        return Result.success(emps);
    }

    //按条件获取员工列表
    @PostMapping("/search")
    public Result getEmps(@RequestBody Emp emp) {
        log.info("Fetching employees by condition");
        List<Emp> emps = empService.getEmps(emp);
        return Result.success(emps);
    }

    //获取分页数据
    @GetMapping("/pages")
    public Result getPages(@RequestParam Integer page,
                           @RequestParam Integer pageSize) {
        log.info("Fetching employees pages 参数page：{}，pageSize：{}",page,pageSize);
        PageBean pagebean = empService.page(page,pageSize);
        return Result.success(pagebean);
    }

    // 获取指定字段的员工
    @PostMapping("/emp")
    public Result getEmpById(@RequestBody Emp emp) {
        log.info("Fetching employee with : {}", emp);
        Emp e = empService.getEmp(emp);
        return Result.success(e);
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
        emp.seteUpdatetime(timeUtil.getCurrentTimestamp());
        return empService.updateEmp(emp);
    }

    // 删除指定 ID 的员工
    @DeleteMapping("/{id}")
    public int deleteEmp(@PathVariable Integer id) {
        log.info("Deleting employee with ID: {}", id);
        return empService.deleteEmp(id);
    }

    // 删除员工合集
    @DeleteMapping("/batch")
    public int deleteEmps(@RequestParam List<Integer> ids) {
        log.info("Deleting employees with IDs: {}", ids);
        return empService.deleteEmps(ids);
    }

}
