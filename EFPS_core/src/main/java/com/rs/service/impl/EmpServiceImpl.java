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
import com.rs.mapper.EmpMenuMapper;
import com.rs.service.EmpService;
import com.rs.mapper.EmpMapper;
import com.rs.utils.JwtUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;
import com.rs.utils.TimeUtil;

import java.util.List;
import java.util.Objects;

/**
* @author RWG
* @description 针对表【emp】的数据库操作Service实现
* @createDate 2024-07-26 17:17:57
*/
@Service
public class EmpServiceImpl extends ServiceImpl<EmpMapper, Emp>
    implements EmpService{

    @Autowired
    private EmpMapper empMapper;
    @Autowired
    private AuthenticationManager authenticationManager;
    @Override
    public List<Emp> getAllEmps() {
        return empMapper.getAllEmps();
    }
    @Autowired
    private TimeUtil timeUtil;
    @Autowired
    private EmpMenuMapper menuEmpMapper;

    @Override
    public int createEmp(Emp emp) {
        emp.seteCreatetime(timeUtil.getCurrentTimestamp());
        emp.seteUpdatetime(timeUtil.getCurrentTimestamp());
        emp.seteIsenabled(0);
        return empMapper.createEmp(emp);
    }

    @Override
    public int updateEmp(Emp emp) {
        emp.seteUpdatetime(timeUtil.getCurrentTimestamp());
        return empMapper.updateEmp(emp);
    }

    @Override
    public int deleteEmp(Integer id) {
        return empMapper.deleteEmp(id);
    }

    @Override
    public Emp getEmp(Emp emp) {
        return empMapper.getEmp(emp);
    }

    @Override
    public List<Emp> getEmps(Emp emp) {
        return empMapper.getEmps(emp);
    }

    @Override
    public PageBean page(Integer page, Integer pageSize) {
        PageHelper.startPage(page,pageSize);
        List<Emp> emplist = empMapper.getAllEmps();
        Page<Emp> p = (Page<Emp>) emplist;
        return new PageBean(p.getTotal(),p.getResult());
    }

    @Override
    public int deleteEmps(List<Integer> ids) {
        return empMapper.deleteEmps(ids);
    }

    @Override
    public int deleteEmpBydid(Integer id) {
        return empMapper.deleteEmpBydid(id);
    }

    @Override
    public int deleteEmpsBydids(List<Integer> ids) {
        return empMapper.deleteEmpsBydids(ids);
    }

    @Override
    public List<DeptCount> findDeptIdCount() {
        return empMapper.findDeptIdCount();
    }

    @Override
//    @PreAuthorize("hasAnyRole('ADMIN','USER')")
    public String login(Emp emp) {
        // 创建认证对象
        UsernamePasswordAuthenticationToken authentication = new UsernamePasswordAuthenticationToken(emp.geteUsername(),emp.getePassword());
        // 执行认证
        try {
            Authentication authenticate = authenticationManager.authenticate(authentication);
            // 放入用户信息
            LoginUserDetail loginUserDetail = (LoginUserDetail) authenticate.getPrincipal();
            // 生成jwt 使用fastjson方法把对象转成字符串
            String loginUserDetailString = JSON.toJSONString(loginUserDetail);
            // 生成token
            return JwtUtils.generateJwtFromJson(loginUserDetailString, null);
        }catch (Exception e){
            throw new BizException("执行认证出错");
        }
    }

    @Override
//    @PreAuthorize("hasAnyRole('ADMIN','USER')")
    public UserDetails getEmpBytoken(String token) {
        // 验证 Token
        if (JwtUtils.validateToken(token)) {
            // 从 Token 中提取用户名
            String username = JwtUtils.getUsernameFromToken(token);
            Emp emp = getEmp(new Emp(username));
            if (emp != null) {
                // 获取用户权限
                List<String> permissions = getUserPermissions(emp.getId());
                // 创建 UserDetails 对象
                return new LoginUserDetail(emp,permissions);
            }else{
                // 抛出异常
                throw new BizException("Token 有效，但是读取用户信息失败");
            }
        }else {
            // 抛出异常
            throw new BizException("Token 无效");
        }
    }
    @Override
    // 获取用户的权限集合
    public List<String> getUserPermissions(Integer empId) {
        return menuEmpMapper.findPermissionsByEmpId(empId);
    }
}




