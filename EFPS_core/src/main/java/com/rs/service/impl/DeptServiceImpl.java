package com.rs.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.rs.domain.Dept;
import com.rs.service.DeptService;
import com.rs.mapper.DeptMapper;
import org.springframework.stereotype.Service;

/**
* @author RWG
* @description 针对表【dept】的数据库操作Service实现
* @createDate 2024-07-26 17:18:05
*/
@Service
public class DeptServiceImpl extends ServiceImpl<DeptMapper, Dept>
    implements DeptService{

}




