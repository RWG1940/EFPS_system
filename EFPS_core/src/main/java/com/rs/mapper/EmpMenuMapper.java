package com.rs.mapper;

import com.rs.domain.EmpMenu;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
* @author RWG
* @description 针对表【emp_menu】的数据库操作Mapper
* @createDate 2024-08-09 22:28:52
* @Entity com.rs.domain.EmpMenu
*/
@Mapper
public interface EmpMenuMapper extends BaseMapper<EmpMenu> {

    List<String> findPermissionsByEmpId(Integer empId);
}




