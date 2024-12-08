package com.rs.service;

import com.rs.domain.FlightPlan;
import com.baomidou.mybatisplus.extension.service.IService;
import com.rs.exception.pojo.vo.ResultResponse;

import java.util.List;

/**
* @author RWG
* @description 针对表【flight_plan(航班计划表)】的数据库操作Service
* @createDate 2024-12-06 15:58:37
*/
public interface FlightPlanService extends IService<FlightPlan> {

    ResultResponse getPages(Integer page, Integer pageSize);

    ResultResponse addFlightPlan(FlightPlan flightPlan);

    ResultResponse deleteFlightPlan(List<Integer> ids);

    ResultResponse updateFlightPlan(FlightPlan flightPlan);

    ResultResponse searchFlightPlan(FlightPlan flightPlan);
}
