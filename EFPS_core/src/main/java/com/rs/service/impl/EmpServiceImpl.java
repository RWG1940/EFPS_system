package com.rs.service.impl;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.rs.domain.vo.DeptCount;
import com.rs.domain.Emp;
import com.rs.domain.vo.LoginUserDetail;
import com.rs.domain.vo.PageBean;
import com.rs.exception.pojo.BizException;
import com.rs.exception.pojo.vo.ResultResponse;
import com.rs.service.EmpRoleService;
import com.rs.service.EmpService;
import com.rs.mapper.EmpMapper;
import com.rs.service.MenuService;
import com.rs.utils.JwtUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import com.rs.utils.TimeUtil;

import java.util.List;

/**
 * @author RWG
 * @description 针对表【emp】的数据库操作Service实现
 * @createDate 2024-07-26 17:17:57
 */
@Service
public class EmpServiceImpl extends ServiceImpl<EmpMapper, Emp>
        implements EmpService {

    @Autowired
    private EmpMapper empMapper;
    @Autowired
    private AuthenticationManager authenticationManager;
    @Autowired
    private TimeUtil timeUtil;
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private EmpRoleService empRoleService;
    @Autowired
    private MenuService menuService;

    @Override
    public ResultResponse getAllEmps() {
        List<Emp> emps = empMapper.getAllEmps();
        if (emps == null) {
            return ResultResponse.error("没有找到任何员工");
        }
        return ResultResponse.success(emps);
    }

    @Override
    public ResultResponse createEmp(Emp emp) {
        ResultResponse resultResponse = register(emp);
        if (!resultResponse.getCode().equals("1")) {
            return ResultResponse.error("创建用户失败");
        }
        return ResultResponse.success();
    }

    @Override
    public ResultResponse updateEmp(Emp emp) {
        emp.seteUpdatetime(timeUtil.getCurrentTimestamp());
        if (empMapper.updateEmp(emp) == 0) {
            return ResultResponse.error("更新用户失败");
        }
        return ResultResponse.success();
    }

    @Override
    public ResultResponse deleteEmp(Integer id) {
        if (empMapper.deleteEmp(id) == 0) {
            return ResultResponse.error("删除用户失败");
        }
        return ResultResponse.success();
    }

    @Override
    public ResultResponse getEmp(Emp emp) {
        Emp e = empMapper.getEmp(emp);
        if (e == null) {
            return ResultResponse.error("没有找到该员工");
        }
        return ResultResponse.success(e);
    }

    @Override
    public ResultResponse getEmps(Emp emp) {
        List<Emp> emps = empMapper.getEmps(emp);
        if (emps == null) {
            return ResultResponse.error("没有找到任何员工");
        }
        return ResultResponse.success(emps);
    }

    @Override
    public ResultResponse page(Integer page, Integer pageSize) {
        PageHelper.startPage(page, pageSize);
        List<Emp> emplist = empMapper.getAllEmps();
        Page<Emp> p = (Page<Emp>) emplist;
        PageBean pageBean = new PageBean(p.getTotal(), p.getResult());
        return ResultResponse.success(pageBean);
    }

    @Override
    public ResultResponse deleteEmps(List<Integer> ids) {
        if (empMapper.deleteEmps(ids) == 0) {
            return ResultResponse.error("删除用户失败");
        }
        return ResultResponse.success();
    }

    @Override
    public ResultResponse login(Emp emp) {
        // 创建认证对象
        UsernamePasswordAuthenticationToken authentication = new UsernamePasswordAuthenticationToken(emp.geteUsername(), emp.getePassword());
        // 执行认证
        try {
            Authentication authenticate = authenticationManager.authenticate(authentication);
            // 获取认证成功后的用户信息
            LoginUserDetail loginUserDetail = (LoginUserDetail) authenticate.getPrincipal();
            return ResultResponse.success(JwtUtils.generateJwtFromJson(JSON.toJSONString(loginUserDetail), null));
        } catch (Exception e) {
            throw new BizException("执行认证出错");
        }
    }

    @Override
    public ResultResponse register(Emp emp) {
        // 查找用户是否已存在
        if (empMapper.getEmp(new Emp(emp.geteUsername())) != null) {
            return ResultResponse.error("用户已存在");
        }
        // 加密密码
        emp.setePassword(passwordEncoder.encode(emp.getePassword()));
        // 插入数据
        if (empMapper.createEmp(emp) != 1) {
            return ResultResponse.error("注册失败");
        }
        // 重新构建emp实体 查找创建后的emp实体
        Emp e = new Emp();
        e.seteUsername(emp.geteUsername());
        e.setePassword(emp.getePassword());
        Emp new_e = empMapper.getEmp(e);
        // 设置创建时间和更新时间
        new_e.seteUpdatetime(timeUtil.getCurrentTimestamp());
        new_e.seteCreatetime(timeUtil.getCurrentTimestamp());
        updateEmp(new_e);
        // 赋予初始角色 3普通用户
        empRoleService.insertEmpRole(new_e.getId(), 3);
        // 查找普通用户对应menu表中的权限id再查找普通用户的权限id对应的权限
        List<String> roles = menuService.selectMenuById(3);
        // 构建LoginUserDetail
        LoginUserDetail loginUserDetail = new LoginUserDetail(emp, roles);
        return ResultResponse.success(JwtUtils.generateJwtFromJson(JSON.toJSONString(loginUserDetail), null));
    }

    @Override
    public ResultResponse loginByToken() {
        // 从 SecurityContextHolder 获取当前用户信息
        UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        // 如果用户存在，返回最新的用户信息
        if (userDetails != null) {
            return ResultResponse.success(empMapper.getEmp(new Emp(userDetails.getUsername())));
        } else {
            return ResultResponse.error("找不到该用户");
        }
    }
}




