package com.rs.service;

import com.rs.domain.AirspaceEvent;
import com.baomidou.mybatisplus.extension.service.IService;
import com.rs.exception.pojo.vo.ResultResponse;

import java.util.List;

/**
* @author RWG
* @description 针对表【airspace_event】的数据库操作Service
* @createDate 2024-11-01 15:53:28
*/
public interface AirspaceEventService extends IService<AirspaceEvent> {

    ResultResponse getAllAirspaceEvent();

    ResultResponse getPages(Integer page, Integer pageSize);

    ResultResponse addAirspaceEvent(AirspaceEvent airspaceEvent);

    ResultResponse updateAirspaceEvent(AirspaceEvent airspaceEvent);

    ResultResponse deleteAirspaceEvent(List<Integer> ids);

    ResultResponse searchAirspaceEvent(AirspaceEvent airspaceEvent);
}
