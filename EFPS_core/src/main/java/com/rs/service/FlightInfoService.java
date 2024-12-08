package com.rs.service;

import com.rs.domain.FlightInfo;
import com.baomidou.mybatisplus.extension.service.IService;
import com.rs.exception.pojo.vo.ResultResponse;

import java.util.List;

/**
* @author RWG
* @description 针对表【flight_info(航班信息表)】的数据库操作Service
* @createDate 2024-12-06 15:58:41
*/
public interface FlightInfoService extends IService<FlightInfo> {

    ResultResponse searchFlightInfo(FlightInfo flightInfo);

    ResultResponse updateFlightInfo(FlightInfo flightInfo);

    ResultResponse deleteFlightInfo(List<Integer> ids);

    ResultResponse addFlightInfo(FlightInfo flightInfo);

    ResultResponse getPages(Integer page, Integer pageSize);
}
