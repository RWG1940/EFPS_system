package com.rs.mapper;

import com.rs.domain.Dept;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
* @author RWG
* @description 针对表【dept】的数据库操作Mapper
* @createDate 2024-07-28 12:03:30
* @Entity com.rs.domain.Dept
*/
@Mapper
public interface DeptMapper extends BaseMapper<Dept> {

}




