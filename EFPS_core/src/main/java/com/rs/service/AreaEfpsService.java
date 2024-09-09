package com.rs.service;

import com.rs.domain.AreaEfps;
import com.baomidou.mybatisplus.extension.service.IService;
import com.rs.exception.pojo.vo.ResultResponse;

import java.util.List;

/**
* @author RWG
* @description 针对表【area_efps】的数据库操作Service
* @createDate 2024-08-21 18:46:39
*/
public interface AreaEfpsService extends IService<AreaEfps> {

    ResultResponse getAllAreaEfps();

    ResultResponse getPages(Integer page, Integer pageSize);

    ResultResponse addAreaEfps(AreaEfps areaEfps);

    ResultResponse deleteAreaEfps(List<Integer> ids);

    ResultResponse updateAreaEfps(AreaEfps areaEfps);

    ResultResponse searchAreaEfps(AreaEfps areaEfps);
}
