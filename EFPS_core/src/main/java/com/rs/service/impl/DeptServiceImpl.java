package com.rs.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.rs.domain.*;
import com.rs.domain.vo.DeptCount;
import com.rs.domain.vo.PageBean;
import com.rs.utils.JwtUtils;
import com.rs.utils.TimeUtil;
import com.rs.service.DeptService;
import com.rs.mapper.DeptMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @author RWG
 * @description 针对表【dept】的数据库操作Service实现
 * @createDate 2024-07-28 12:03:30
 */
@Slf4j
@Service
public class DeptServiceImpl extends ServiceImpl<DeptMapper, Dept>
        implements DeptService {

    @Autowired
    private DeptMapper deptMapper;
    @Autowired
    private TimeUtil timeUtil;
    @Autowired
    private EmpServiceImpl empService;

    @Override
    public List<Dept> getAllDepts() {
        return deptMapper.getAllDepts();
    }

    @Override
    public List<Dept> getDepts(Dept dept) {
        return deptMapper.getDepts(dept);
    }

    @Override
    public PageBean page(Integer page, Integer pageSize) {
        PageHelper.startPage(page, pageSize);
        List<Dept> deptlist = deptMapper.getAllDepts();
        Page<Dept> p = (Page<Dept>) deptlist;
        PageBean pageBean = new PageBean(p.getTotal(), p.getResult());
        return pageBean;
    }

    @Override
    public Dept getDept(Dept dept) {
        return deptMapper.getDept(dept);
    }

    @Override
    public int createDept(Dept dept) {
        dept.setdTotal(0);
        dept.setdUpdatetime(timeUtil.getCurrentTimestamp());
        dept.setdCreatetime(timeUtil.getCurrentTimestamp());
        return deptMapper.createDept(dept);
    }

    @Override
    public int updateDept(Dept dept) {
        dept.setdUpdatetime(timeUtil.getCurrentTimestamp());
        return deptMapper.updateDept(dept);
    }

    @Override
    public int deleteDept(Integer id) {
        empService.deleteEmpBydid(id);
        return deptMapper.deleteDept(id);
    }

    @Override
    public int deleteDepts(List<Integer> ids) {
        //批量删除部门的同时批量删除员工
        empService.deleteEmpsBydids(ids);
        return deptMapper.deleteDepts(ids);
    }

    @Override
    public PageBean getPages(Integer page, Integer pageSize, String token) {
        try {
            // 从user表中统计各个dept_id的count值
            List<DeptCount> results = empService.findDeptIdCount();
            if (results != null && !results.isEmpty()) {
                Dept dept = new Dept();
                for (DeptCount result : results) {
                    Integer deptId = result.getEDeptId();
                    Integer count = result.getDTotal();
                    dept.setId(deptId);
                    Dept fetchedDept = getDept(dept);
                    if (fetchedDept != null) {
                        fetchedDept.setdTotal(count);
                        updateDept(fetchedDept);
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
                    return page(page, pageSize);
                } else {
                    log.error("令牌已过期或无效");
                    return null;
                }
            } else {
                log.error("用户不存在");
                return null;
            }
        } catch (Exception e) {
            log.error("自动获取部门失败：{}", e.getMessage());
            return null;
        }
    }
}




