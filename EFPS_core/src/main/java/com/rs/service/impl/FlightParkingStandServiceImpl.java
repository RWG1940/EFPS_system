package com.rs.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.rs.domain.FlightParkingStand;
import com.rs.service.FlightParkingStandService;
import com.rs.mapper.FlightParkingStandMapper;
import org.springframework.stereotype.Service;

/**
* @author RWG
* @description 针对表【flight_parking_stand(航班停机位关联表)】的数据库操作Service实现
* @createDate 2024-12-06 15:58:26
*/
@Service
public class FlightParkingStandServiceImpl extends ServiceImpl<FlightParkingStandMapper, FlightParkingStand>
    implements FlightParkingStandService{

}




