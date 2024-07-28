package com.rs.mapper;

import com.rs.domain.Emp;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
* @author RWG
* @description 针对表【emp】的数据库操作Mapper
* @createDate 2024-07-26 17:17:57
* @Entity com.rs.efps_system_background.domain.Emp
*/
@Mapper
public interface EmpMapper extends BaseMapper<Emp> {

    // 获取所有员工
    @Select("SELECT * FROM emp")
    List<Emp> getAllEmps();

    // 获取指定字段的员工
    Emp getEmp(Emp emp);

    // 创建新员工
    int createEmp(Emp emp);

    // 更新员工信息
    @Update("UPDATE emp SET eId=#{eId}, eUsername=#{eUsername}, ePassword=#{ePassword}, eName=#{eName}, eGender=#{eGender}, eAge=#{eAge}, ePhone=#{ePhone}, eDeptid=#{eDeptid}, eRole=#{eRole}, eAvatarpath=#{eAvatarpath}, eCreatetime=#{eCreatetime}, eUpdatetime=#{eUpdatetime}, eIsenabled=#{eIsenabled} WHERE id = #{id}")
    int updateEmp(Emp emp);

    // 删除指定 ID 的员工
    @Delete("DELETE FROM emp WHERE id = #{id}")
    int deleteEmp(@Param("id") Integer id);

}




