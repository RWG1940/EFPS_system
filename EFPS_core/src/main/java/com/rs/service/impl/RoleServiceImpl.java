package com.rs.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.rs.domain.Role;
import com.rs.service.RoleService;
import com.rs.mapper.RoleMapper;
import org.springframework.stereotype.Service;

/**
* @author RWG
* @description 针对表【role】的数据库操作Service实现
* @createDate 2024-08-09 21:12:21
*/
@Service
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role>
    implements RoleService{

}




