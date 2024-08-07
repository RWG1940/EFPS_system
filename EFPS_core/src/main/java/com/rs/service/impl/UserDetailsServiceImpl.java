package com.rs.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.rs.domain.Emp;
import com.rs.domain.vo.LoginUserDetail;
import com.rs.exception.pojo.BizException;
import com.rs.exception.pojo.ExceptionEnum;
import com.rs.mapper.EmpMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 * @FileName: UserDetailsServiceImpl
 * @Date: 2024/8/7:22:08
 * @Description:
 * @Author: RWG
 */
@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    private EmpMapper empMapper;
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        // 根据用户名查询用户信息
        QueryWrapper<Emp> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("e_name", username);
        Emp emp = empMapper.selectOne(queryWrapper);
        if (emp == null) {
            throw new BizException(ExceptionEnum.NOT_FOUND);
        }
        // 判断密码是否正确
        // 返回UserDetail对象
        return  new LoginUserDetail(emp);
    }
}
