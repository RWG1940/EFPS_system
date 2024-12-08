package com.rs.service;

import com.rs.domain.AircraftsTrends;
import com.baomidou.mybatisplus.extension.service.IService;
import com.rs.exception.pojo.vo.ResultResponse;

import java.util.List;

/**
* @author RWG
* @description 针对表【aircrafts_trends】的数据库操作Service
* @createDate 2024-09-03 14:46:45
*/
public interface AircraftsTrendsService extends IService<AircraftsTrends>  {

    ResultResponse deleteBatchAircraftsTrends(List<Integer> ids);

    ResultResponse updateAircraftsTrends(AircraftsTrends aircraftsTrends);

    ResultResponse addAircraftsTrends(AircraftsTrends aircraftsTrends);

    ResultResponse searchAircraftsTrends(AircraftsTrends aircraftsTrends);

    ResultResponse getPages(Integer page, Integer pageSize);

    ResultResponse getAllAircraftsTrends();
}
