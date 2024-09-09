package com.rs.controller;

import com.rs.domain.Emp;
import com.rs.domain.vo.EmpRoleDeptDTO;
import com.rs.exception.pojo.vo.ResultResponse;
import com.rs.service.EmpService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
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
@Api(tags = "职员控制器")
public class EmpController {

    @Autowired
    private EmpService empService;

    // 获取所有员工
    @PreAuthorize("hasAuthority('emp')")
    @GetMapping
    @ApiOperation("获取所有员工")
    public ResultResponse getAllEmps() {
        return empService.getAllEmps();
    }

    //按条件获取员工列表
    @PreAuthorize("hasAuthority('emp')")
    @PostMapping("/search")
    @ApiOperation("按条件获取员工列表")
    public ResultResponse getEmps(@RequestBody Emp emp) {
        return empService.getEmps(emp);
    }

    //获取分页数据
    @PreAuthorize("hasAuthority('emp')")
    @GetMapping("/pages")
    @ApiOperation("获取分页数据")
    public ResultResponse getPages(@RequestParam Integer page,
                           @RequestParam Integer pageSize) {
        return empService.page(page,pageSize);
    }

    // 获取指定字段的员工
    @PreAuthorize("hasAuthority('emp')")
    @PostMapping("/emp")
    @ApiOperation("获取指定字段的员工")
    public ResultResponse getEmpById(@RequestBody Emp emp) {
        return empService.getEmp(emp);
    }

    // 创建新员工
    @PostMapping
    @PreAuthorize("hasAuthority('emp')")
    @ApiOperation("创建新员工")
    public ResultResponse createEmp(@RequestBody EmpRoleDeptDTO empRoleDeptDTO) {
        return empService.createEmp(empRoleDeptDTO);
    }

    // 更新员工信息
    @PutMapping("/{id}")
    @PreAuthorize("hasAuthority('emp')")
    @ApiOperation("更新员工信息")
    public ResultResponse updateEmp(@RequestBody EmpRoleDeptDTO empRoleDeptDTO) {
        return empService.updateEmp(empRoleDeptDTO);
    }

    // 删除指定 ID 的员工
    @DeleteMapping("/{id}")
    @PreAuthorize("hasAuthority('emp')")
    @ApiOperation("删除指定 ID 的员工")
    public ResultResponse deleteEmp(@PathVariable Integer id) {
        return empService.deleteEmp(id);
    }

    // 删除员工合集
    @DeleteMapping("/batch")
    @PreAuthorize("hasAuthority('emp')")
    @ApiOperation("删除员工合集")
    public ResultResponse deleteEmps(@RequestParam List<Integer> ids) {
        return empService.deleteEmps(ids);
    }

}
