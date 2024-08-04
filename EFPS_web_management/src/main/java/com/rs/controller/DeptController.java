package com.rs.controller;

import com.rs.domain.Dept;
import com.rs.domain.Emp;
import com.rs.domain.PageBean;
import com.rs.domain.Result;
import com.rs.service.DeptService;
import com.rs.service.EmpService;
import com.rs.utils.JwtUtils;
import com.rs.utils.TimeUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

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
        log.info("Fetching Depts pages 参数page：{}，pageSize：{}",page,pageSize);
        PageBean pagebean = deptService.page(page,pageSize);
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
        return deptService.deleteDept(id);
    }

    // 删除部门合集
    @DeleteMapping("/batch")
    public int deleteEmps(@RequestParam List<Integer> ids) {
        log.info("Deleting Depts with IDs: {}", ids);
        return deptService.deleteDepts(ids);
    }

    @PostMapping("/auto-depts")
    public Result autoDepts(@RequestParam String token){
        log.info("员工登录：{}",token);
        try {
            Map<String,Object> claims;
            claims = JwtUtils.parseJwt(token);
            String username = (String)claims.get("username");
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
