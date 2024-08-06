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

    // 获取所有员工
    @GetMapping
    public Result getAllEmps() {
        log.info("Fetching all employees");
        List<Emp> emps = empService.getAllEmps();
        if (emps == null){
            return Result.error("没有找到任何员工");
        }
        return Result.success(emps);
    }

    //按条件获取员工列表
    @PostMapping("/search")
    public Result getEmps(@RequestBody Emp emp) {
        log.info("Fetching employees by condition");
        List<Emp> emps = empService.getEmps(emp);
        if (emps == null){
            return Result.error("没有找到任何员工");
        }
        return Result.success(emps);
    }

    //获取分页数据
    @GetMapping("/pages")
    public Result getPages(@RequestParam Integer page,
                           @RequestParam Integer pageSize) {
        log.info("Fetching employees pages 参数page：{}，pageSize：{}",page,pageSize);
        PageBean pagebean = empService.page(page,pageSize);
        if (pagebean == null){
            return Result.error("没有找到任何员工");
        }
        return Result.success(pagebean);
    }

    // 获取指定字段的员工
    @PostMapping("/emp")
    public Result getEmpById(@RequestBody Emp emp) {
        log.info("Fetching employee with : {}", emp);
        Emp e = empService.getEmp(emp);
        if (e == null){
            return Result.error("没有找到任何员工");
        }
        return Result.success(e);
    }

    // 创建新员工
    @PostMapping
    public Result createEmp(@RequestBody Emp emp) {
        log.info("Creating new employee: {}", emp);

        if (empService.createEmp(emp) == 0){
            return Result.error("创建失败");
        }
        return Result.success();
    }

    // 更新员工信息
    @PutMapping("/{id}")
    public Result updateEmp(@PathVariable Integer id, @RequestBody Emp emp) {
        log.info("Updating employee with ID: {}", id);
        if (empService.updateEmp(emp) == 0){
            return Result.error("更新失败");
        }
        return Result.success();
    }

    // 删除指定 ID 的员工
    @DeleteMapping("/{id}")
    public Result deleteEmp(@PathVariable Integer id) {
        log.info("Deleting employee with ID: {}", id);
        if (empService.deleteEmp(id) == 0){
            return Result.error("删除失败");
        }
        return Result.success();
    }

    // 删除员工合集
    @DeleteMapping("/batch")
    public Result deleteEmps(@RequestParam List<Integer> ids) {
        log.info("Deleting employees with IDs: {}", ids);
        if (empService.deleteEmps(ids) == 0){
            return Result.error("删除失败");
        }
        return Result.success();
    }

}
