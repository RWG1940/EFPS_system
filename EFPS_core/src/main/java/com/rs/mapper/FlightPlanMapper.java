package com.rs.mapper;

import com.rs.domain.FlightPlan;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
* @author RWG
* @description 针对表【flight_plan(航班计划表)】的数据库操作Mapper
* @createDate 2024-12-06 15:58:37
* @Entity com.rs.domain.FlightPlan
*/
@Mapper
public interface FlightPlanMapper extends BaseMapper<FlightPlan> {

}




