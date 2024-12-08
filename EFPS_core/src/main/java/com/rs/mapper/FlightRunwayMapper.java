package com.rs.mapper;

import com.rs.domain.FlightRunway;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
* @author RWG
* @description 针对表【flight_runway(航班跑道关联表)】的数据库操作Mapper
* @createDate 2024-12-06 15:58:33
* @Entity com.rs.domain.FlightRunway
*/
@Mapper
public interface FlightRunwayMapper extends BaseMapper<FlightRunway> {

}




