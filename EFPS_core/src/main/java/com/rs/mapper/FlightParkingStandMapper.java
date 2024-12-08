package com.rs.mapper;

import com.rs.domain.FlightParkingStand;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
* @author RWG
* @description 针对表【flight_parking_stand(航班停机位关联表)】的数据库操作Mapper
* @createDate 2024-12-06 15:58:26
* @Entity com.rs.domain.FlightParkingStand
*/
@Mapper
public interface FlightParkingStandMapper extends BaseMapper<FlightParkingStand> {

}




