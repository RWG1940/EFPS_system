package com.rs.controller;

import com.rs.domain.Emp;
import com.rs.exception.pojo.vo.ResultResponse;
import com.rs.service.EmpService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
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
public class EmpController {

    @Autowired
    private EmpService empService;

    // 获取所有员工
    @PreAuthorize("hasAuthority('emp')")
    @GetMapping
    public ResultResponse getAllEmps() {
        return empService.getAllEmps();
    }

    //按条件获取员工列表
    @PreAuthorize("hasAuthority('emp')")
    @PostMapping("/search")
    public ResultResponse getEmps(@RequestBody Emp emp) {
        return empService.getEmps(emp);
    }

    //获取分页数据
    @PreAuthorize("hasAuthority('emp')")
    @GetMapping("/pages")
    public ResultResponse getPages(@RequestParam Integer page,
                           @RequestParam Integer pageSize) {
        return empService.page(page,pageSize);
    }

    // 获取指定字段的员工
    @PreAuthorize("hasAuthority('emp')")
    @PostMapping("/emp")
    public ResultResponse getEmpById(@RequestBody Emp emp) {
        return empService.getEmp(emp);
    }

    // 创建新员工
    @PostMapping
    @PreAuthorize("hasAuthority('emp')")
    public ResultResponse createEmp(@RequestBody Emp emp) {
        return empService.createEmp(emp);
    }

    // 更新员工信息
    @PutMapping("/{id}")
    @PreAuthorize("hasAuthority('emp')")
    public ResultResponse updateEmp(@RequestBody Emp emp) {
        return empService.updateEmp(emp);
    }

    // 删除指定 ID 的员工
    @DeleteMapping("/{id}")
    @PreAuthorize("hasAuthority('emp')")
    public ResultResponse deleteEmp(@PathVariable Integer id) {
        return empService.deleteEmp(id);
    }

    // 删除员工合集
    @DeleteMapping("/batch")
    @PreAuthorize("hasAuthority('emp')")
    public ResultResponse deleteEmps(@RequestParam List<Integer> ids) {
        return empService.deleteEmps(ids);
    }

}
