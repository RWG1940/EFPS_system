package com.rs.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.rs.domain.FlightRunway;
import com.rs.service.FlightRunwayService;
import com.rs.mapper.FlightRunwayMapper;
import org.springframework.stereotype.Service;

/**
* @author RWG
* @description 针对表【flight_runway(航班跑道关联表)】的数据库操作Service实现
* @createDate 2024-12-06 15:58:33
*/
@Service
public class FlightRunwayServiceImpl extends ServiceImpl<FlightRunwayMapper, FlightRunway>
    implements FlightRunwayService{

}




