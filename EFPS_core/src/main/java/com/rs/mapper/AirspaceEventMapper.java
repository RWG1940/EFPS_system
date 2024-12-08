package com.rs.mapper;

import com.rs.domain.AirspaceEvent;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
* @author RWG
* @description 针对表【airspace_event】的数据库操作Mapper
* @createDate 2024-11-01 15:53:28
* @Entity com.rs.domain.AirspaceEvent
*/
@Mapper
public interface AirspaceEventMapper extends BaseMapper<AirspaceEvent> {

    List<AirspaceEvent> getAirspaceEventList(AirspaceEvent airspaceEvent);
}




