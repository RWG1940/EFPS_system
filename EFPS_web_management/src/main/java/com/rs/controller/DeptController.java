package com.rs.controller;

import com.rs.domain.*;
import com.rs.exception.pojo.vo.ResultResponse;
import com.rs.service.DeptService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;


/**
 * @FileName: DeptController
 * @Date: 2024/8/4:14:26
 * @Description: 部门控制器
 * @Author: RWG
 */
@Slf4j
@RestController
@RequestMapping("/depts")
public class DeptController {

    @Autowired
    private DeptService deptService;

    // 获取所有部门数据
    @GetMapping
    @PreAuthorize("hasAuthority('emp')")
    public ResultResponse getAllDepts() {
        return deptService.getAllDepts();
    }

    //按条件获取部门列表
    @PostMapping("/search")
    @PreAuthorize("hasAuthority('emp')")
    public ResultResponse getDepts(@RequestBody Dept dept) {

        return deptService.getDepts(dept);
    }

    //获取分页数据
    @GetMapping("/pages")
    @PreAuthorize("hasAuthority('emp')")
    public ResultResponse getPages(@RequestParam Integer page,
                           @RequestParam Integer pageSize) {
        return deptService.getPages(page, pageSize);
    }


    // 获取指定字段的部门
    @PostMapping("/dept")
    @PreAuthorize("hasAuthority('emp')")
    public ResultResponse getDeptById(@RequestBody Dept dept) {
        return deptService.getDept(dept);
    }

    // 创建新部门
    @PostMapping
    @PreAuthorize("hasAuthority('emp')")
    public ResultResponse createDept(@RequestBody Dept dept) {
        return deptService.createDept(dept);
    }

    // 更新部门信息
    @PutMapping("/{id}")
    @PreAuthorize("hasAuthority('emp')")
    public ResultResponse updateDept(@RequestBody Dept dept) {
        return deptService.updateDept(dept);
    }

    // 删除指定 ID 的部门
    @DeleteMapping("/{id}")
    @PreAuthorize("hasAuthority('emp')")
    public ResultResponse deleteDept(@PathVariable Integer id) {
        return deptService.deleteDept(id);
    }

    // 删除部门合集
    @DeleteMapping("/batch")
    @PreAuthorize("hasAuthority('emp')")
    public ResultResponse deleteDepts(@RequestParam List<Integer> ids) {
        return deptService.deleteDepts(ids);
    }

}
