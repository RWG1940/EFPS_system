package com.rs.controller;

import com.rs.domain.*;
import com.rs.service.DeptService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
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
@CrossOrigin(origins = "*")
@RequestMapping("/depts")
public class DeptController {

    @Autowired
    private DeptService deptService;

    // 获取所有部门数据
    @GetMapping
    public Result getAllDepts() {
        log.info("Fetching all Depts");
        List<Dept> deptList = deptService.getAllDepts();
        if (deptList == null){
            return Result.error("暂无数据");
        }
        return Result.success(deptList);
    }

    //按条件获取部门列表
    @PostMapping("/search")
    public Result getDepts(@RequestBody Dept dept) {
        log.info("Fetching Depts by condition");
        List<Dept> d = deptService.getDepts(dept);
        if (d == null){
            return Result.error("暂无数据");
        }
        return Result.success(d);
    }

    //获取分页数据
    @GetMapping("/pages")
    public Result getPages(@RequestParam Integer page,
                           @RequestParam Integer pageSize, @RequestParam String token) {
        log.info("Fetching Depts pages 参数page：{}，pageSize：{} By Token：{}", page, pageSize, token);
        PageBean pageBean = deptService.getPages(page, pageSize, token);
        if (pageBean == null){
            return Result.error("暂无数据");
        }
        return Result.success(pageBean);

    }


    // 获取指定字段的部门
    @PostMapping("/dept")
    public Result getEmpById(@RequestBody Dept dept) {
        log.info("Fetching Depts with : {}", dept);
        Dept d = deptService.getDept(dept);
        if (d == null){
            return Result.error("暂无数据");
        }
        return Result.success(d);
    }

    // 创建新部门
    @PostMapping
    public Result createEmp(@RequestBody Dept dept) {
        log.info("Creating new Dept: {}", dept);
        if (deptService.createDept(dept) == 0){
            return Result.error("创建失败");
        }
        return Result.success();
    }

    // 更新部门信息
    @PutMapping("/{id}")
    public Result updateEmp(@PathVariable Integer id, @RequestBody Dept dept) {
        log.info("Updating Dept with ID: {}", id);
        if (deptService.updateDept(dept) == 0){
            return Result.error("更新失败");
        }
        return Result.success();
    }

    // 删除指定 ID 的部门
    @DeleteMapping("/{id}")
    public Result deleteEmp(@PathVariable Integer id) {
        log.info("Deleting Dept with ID: {}", id);
        if (deptService.deleteDept(id) == 0){
            return Result.error("删除失败");
        }
        return Result.success();
    }

    // 删除部门合集
    @DeleteMapping("/batch")
    public Result deleteEmps(@RequestParam List<Integer> ids) {
        log.info("Deleting Depts with IDs: {}", ids);
        if (deptService.deleteDepts(ids) == 0){
            return Result.error("删除失败");
        }
        return Result.success();
    }

}
