package com.rs.mapper;

import com.rs.domain.AircraftsTrends;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
* @author RWG
* @description 针对表【aircrafts_trends】的数据库操作Mapper
* @createDate 2024-09-03 14:46:45
* @Entity com.rs.domain.AircraftsTrends
*/
@Mapper
public interface AircraftsTrendsMapper extends BaseMapper<AircraftsTrends> {

    int deleteAircraftsTrends(List<Integer> ids);

    int updateAircraftsTrends(AircraftsTrends aircraftsTrends);

    int addAircraftsTrends(AircraftsTrends aircraftsTrends);

    AircraftsTrends searchAircraftsTrends(AircraftsTrends aircraftsTrends);

    List<AircraftsTrends> getAllAircraftsTrends();
}




