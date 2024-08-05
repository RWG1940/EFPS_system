package com.rs.controller;

import com.rs.domain.*;
import com.rs.service.DeptService;
import com.rs.service.EmpService;
import com.rs.utils.JwtUtils;
import com.rs.utils.TimeUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

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

    @Autowired
    private TimeUtil timeUtil;

    @Autowired
    private EmpService empService;

    // 获取所有部门
    @GetMapping
    public Result getAllDepts() {
        log.info("Fetching all Depts");
        List<Dept> depts = deptService.getAllDepts();
        return Result.success(depts);
    }

    //按条件获取部门列表
    @PostMapping("/search")
    public Result getDepts(@RequestBody Dept dept) {
        log.info("Fetching Depts by condition");
        List<Dept> depts = deptService.getDepts(dept);
        return Result.success(depts);
    }

    //获取分页数据
    @GetMapping("/pages")
    public Result getPages(@RequestParam Integer page,
                           @RequestParam Integer pageSize) {
        log.info("Fetching Depts pages 参数page：{}，pageSize：{}", page, pageSize);
        PageBean pagebean = deptService.page(page, pageSize);
        return Result.success(pagebean);
    }

    // 获取指定字段的部门
    @PostMapping("/dept")
    public Result getEmpById(@RequestBody Dept dept) {
        log.info("Fetching Depts with : {}", dept);
        Dept d = deptService.getDept(dept);
        return Result.success(d);
    }

    // 创建新部门
    @PostMapping
    public int createEmp(@RequestBody Dept dept) {
        log.info("Creating new Dept: {}", dept);
        dept.setdTotal(0);
        dept.setdUpdatetime(timeUtil.getCurrentTimestamp());
        dept.setdCreatetime(timeUtil.getCurrentTimestamp());
        return deptService.createDept(dept);
    }

    // 更新部门信息
    @PutMapping("/{id}")
    public int updateEmp(@PathVariable Integer id, @RequestBody Dept dept) {
        log.info("Updating Dept with ID: {}", id);
        dept.setdUpdatetime(timeUtil.getCurrentTimestamp());
        return deptService.updateDept(dept);
    }

    // 删除指定 ID 的部门
    @DeleteMapping("/{id}")
    public int deleteEmp(@PathVariable Integer id) {
        log.info("Deleting Dept with ID: {}", id);
        empService.deleteEmpBydid(id);
        return deptService.deleteDept(id);
    }

    // 删除部门合集
    @DeleteMapping("/batch")
    public int deleteEmps(@RequestParam List<Integer> ids) {
        log.info("Deleting Depts with IDs: {}", ids);
//        批量删除部门的同时批量删除员工
        empService.deleteEmpsBydids(ids);
        return deptService.deleteDepts(ids);
    }

    @PostMapping("/auto-depts")
    public Result autoDepts(@RequestParam String token) {
        // 对token进行简单的脱敏处理
        String maskedToken = token.substring(0, Math.min(token.length(), 4)) + "****";
        log.info("员工登录：{}", maskedToken);

        try {
            // 从user表中统计各个dept_id的count值，用count函数
            List<DeptCount> results = empService.findDeptIdCount();
            if (results != null && !results.isEmpty()) {
                Dept dept = new Dept();
                for (DeptCount result : results) {
                    Integer deptId = result.getEDeptId();
                    Integer count = result.getDTotal();
                    // 设置部门ID
                    dept.setId(deptId);
                    // 根据用户表的dept_id获取部门
                    Dept fetchedDept = deptService.getDept(dept);
                    if (fetchedDept != null) {
                        fetchedDept.setdTotal(count);
                        deptService.updateDept(fetchedDept);
                    } else {
                        log.warn("部门ID {} 未找到对应的部门信息", deptId);
                    }
                }
            } else {
                log.warn("没有找到任何部门信息");
            }
        } catch (Exception e) {
            log.error("处理部门计数时发生错误: ", e);

        }
        // 根据前端传来的token去获取部门表所有数据
        try {
            Map<String, Object> claims;
            claims = JwtUtils.parseJwt(token);
            String username = (String) claims.get("username");
            Emp emp = new Emp();
            emp.seteUsername(username);
            if (username != null && empService.getEmp(emp) != null) {
                if (JwtUtils.validateToken(token)) {
                    return Result.success(deptService.getAllDepts());
                } else {
                    return Result.error("令牌已过期或无效");
                }
            } else {
                return Result.error("用户不存在");
            }
        } catch (Exception e) {
            log.error("自动获取部门失败：{}", e.getMessage());
            return Result.error("自动获取部门失败");
        }
    }
}
