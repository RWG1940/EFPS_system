package com.rs.controller;

import com.rs.domain.AircraftsTrends;
import com.rs.exception.pojo.vo.ResultResponse;
import com.rs.service.AircraftsTrendsService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

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
@Api(tags = "航班动态控制器")
public class aircraftsTrendsController {

    @Autowired
    private AircraftsTrendsService aircraftsTrendsService;

    //获取所有消息
    @GetMapping
    @PreAuthorize("hasAuthority('emp')")
    @ApiOperation("获取所有消息")
    public ResultResponse getAllAircraftsTrends() {
        return aircraftsTrendsService.getAllAircraftsTrends();
    }

    //获取分页消息
    @GetMapping("/pages")
    @PreAuthorize("hasAuthority('emp')")
    @ApiOperation("获取分页消息")
    public ResultResponse getPages(@RequestParam Integer page, @RequestParam Integer pageSize) {
        return aircraftsTrendsService.getPages(page, pageSize);
    }

    //搜索消息
    @GetMapping("/search")
    @PreAuthorize("hasAuthority('emp')")
    @ApiOperation("搜索消息")
    public ResultResponse searchAircraftsTrends(@RequestBody AircraftsTrends aircraftsTrends) {
        return aircraftsTrendsService.searchAircraftsTrends(aircraftsTrends);
    }

    //添加消息
    @PostMapping
    @PreAuthorize("hasAuthority('emp')")
    @ApiOperation("添加消息")
    public ResultResponse addAircraftsTrends(@RequestBody AircraftsTrends aircraftsTrends) {
        log.info(aircraftsTrends.toString());
        return aircraftsTrendsService.addAircraftsTrends(aircraftsTrends);
    }

    //更新消息
    @PutMapping
    @PreAuthorize("hasAuthority('emp')")
    @ApiOperation("更新消息")
    public ResultResponse updateAircraftsTrends(@RequestBody AircraftsTrends aircraftsTrends) {
        return aircraftsTrendsService.updateAircraftsTrends(aircraftsTrends);
    }


    //批量删除消息
    @DeleteMapping
    @PreAuthorize("hasAuthority('emp')")
    @ApiOperation("批量删除消息")
    public ResultResponse deleteBatchAircraftsTrends(@RequestParam List<Integer> ids) {
        return aircraftsTrendsService.deleteBatchAircraftsTrends(ids);
    }


}

