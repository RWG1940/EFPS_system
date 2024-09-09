package com.rs.mapper;

import com.rs.domain.AreaEfps;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
* @author RWG
* @description 针对表【area_efps】的数据库操作Mapper
* @createDate 2024-08-21 18:46:39
* @Entity com.rs.domain.AreaEfps
*/
@Mapper
public interface AreaEfpsMapper extends BaseMapper<AreaEfps> {

    List<AreaEfps> getAllAreaEfps();

    AreaEfps getAreaEfps(AreaEfps areaEfps);

    int addAreaEfps(AreaEfps areaEfps);

    int deleteAreaEfps(List<Integer> ids);

    int updateAreaEfps(AreaEfps areaEfps);
}




