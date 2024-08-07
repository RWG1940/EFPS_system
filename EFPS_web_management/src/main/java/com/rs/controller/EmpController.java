package com.rs.controller;

import com.rs.domain.Emp;
import com.rs.domain.vo.PageBean;
import com.rs.exception.pojo.vo.ResultResponse;
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
    public ResultResponse getAllEmps() {
        log.info("Fetching all employees");
        List<Emp> emps = empService.getAllEmps();
        if (emps == null){
            return ResultResponse.error("没有找到任何员工");
        }
        return ResultResponse.success(emps);
    }

    //按条件获取员工列表
    @PostMapping("/search")
    public ResultResponse getEmps(@RequestBody Emp emp) {
        log.info("Fetching employees by condition");
        List<Emp> emps = empService.getEmps(emp);
        if (emps == null){
            return ResultResponse.error("没有找到任何员工");
        }
        return ResultResponse.success(emps);
    }

    //获取分页数据
    @GetMapping("/pages")
    public ResultResponse getPages(@RequestParam Integer page,
                           @RequestParam Integer pageSize) {
        log.info("Fetching employees pages 参数page：{}，pageSize：{}",page,pageSize);
        PageBean pagebean = empService.page(page,pageSize);
        if (pagebean == null){
            return ResultResponse.error("没有找到任何员工");
        }
        return ResultResponse.success(pagebean);
    }

    // 获取指定字段的员工
    @PostMapping("/emp")
    public ResultResponse getEmpById(@RequestBody Emp emp) {
        log.info("Fetching employee with : {}", emp);
        Emp e = empService.getEmp(emp);
        if (e == null){
            return ResultResponse.error("没有找到任何员工");
        }
        return ResultResponse.success(e);
    }

    // 创建新员工
    @PostMapping
    public ResultResponse createEmp(@RequestBody Emp emp) {
        log.info("Creating new employee: {}", emp);

        if (empService.createEmp(emp) == 0){
            return ResultResponse.error("创建失败");
        }
        return ResultResponse.success();
    }

    // 更新员工信息
    @PutMapping("/{id}")
    public ResultResponse updateEmp(@PathVariable Integer id, @RequestBody Emp emp) {
        log.info("Updating employee with ID: {}", id);
        if (empService.updateEmp(emp) == 0){
            return ResultResponse.error("更新失败");
        }
        return ResultResponse.success();
    }

    // 删除指定 ID 的员工
    @DeleteMapping("/{id}")
    public ResultResponse deleteEmp(@PathVariable Integer id) {
        log.info("Deleting employee with ID: {}", id);
        if (empService.deleteEmp(id) == 0){
            return ResultResponse.error("删除失败");
        }
        return ResultResponse.success();
    }

    // 删除员工合集
    @DeleteMapping("/batch")
    public ResultResponse deleteEmps(@RequestParam List<Integer> ids) {
        log.info("Deleting employees with IDs: {}", ids);
        if (empService.deleteEmps(ids) == 0){
            return ResultResponse.error("删除失败");
        }
        return ResultResponse.success();
    }

}
