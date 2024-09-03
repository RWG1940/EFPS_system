package com.rs.controller;

import com.rs.domain.AircraftsTrends;
import com.rs.exception.pojo.vo.ResultResponse;
import com.rs.service.AircraftsTrendsService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @FileName: aircraftsTrendsController
 * @Date: 2024/9/3:14:53
 * @Description: 航班动态控制器
 * @Author: RWG
 */
@RestController
@Slf4j
@RequestMapping("/aircraftsTrends")
public class aircraftsTrendsController {

    @Autowired
    private AircraftsTrendsService aircraftsTrendsService;

    //获取所有消息
    @GetMapping
    @PreAuthorize("hasAuthority('emp')")
    public ResultResponse getAllAircraftsTrends() {
        return aircraftsTrendsService.getAllAircraftsTrends();
    }

    //获取分页消息
    @GetMapping("/pages")
    @PreAuthorize("hasAuthority('emp')")
    public ResultResponse getPages(Integer page, Integer pageSize) {
        return aircraftsTrendsService.getPages(page, pageSize);
    }

    //搜索消息
    @GetMapping("/search")
    @PreAuthorize("hasAuthority('emp')")
    public ResultResponse searchAircraftsTrends(AircraftsTrends aircraftsTrends) {
        return aircraftsTrendsService.searchAircraftsTrends(aircraftsTrends);
    }

    //添加消息
    @PostMapping
    @PreAuthorize("hasAuthority('emp')")
    public ResultResponse addAircraftsTrends(AircraftsTrends aircraftsTrends) {
        return aircraftsTrendsService.addAircraftsTrends(aircraftsTrends);
    }

    //更新消息
    @PostMapping("/update")
    @PreAuthorize("hasAuthority('emp')")
    public ResultResponse updateAircraftsTrends(AircraftsTrends aircraftsTrends) {
        return aircraftsTrendsService.updateAircraftsTrends(aircraftsTrends);
    }


    //批量删除消息
    @PostMapping("/deleteBatch")
    @PreAuthorize("hasAuthority('emp')")
    public ResultResponse deleteBatchAircraftsTrends(List<Integer> ids) {
        return aircraftsTrendsService.deleteBatchAircraftsTrends(ids);
    }


}

