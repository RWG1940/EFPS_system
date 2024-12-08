package com.rs.controller;

import com.rs.domain.FlightInfo;
import com.rs.domain.TowerEfps;
import com.rs.exception.pojo.vo.ResultResponse;
import com.rs.service.FlightInfoService;
import com.rs.service.TowerEfpsService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Description:
 * @Author: RWG
 * @Date: 2024/12/6:16:00
 */
@Slf4j
@RestController
@RequestMapping("/flightInfo")
@Api(tags = "航班信息控制器")
@PreAuthorize("hasAuthority('admin') or hasAuthority('emp')")
public class FlightInfoController {
    @Autowired
    private FlightInfoService flightInfoService;

    @GetMapping
    @ApiOperation("获取所有航班信息")
    public ResultResponse getFlightInfo() {
        return ResultResponse.success(flightInfoService.list());
    }

    @GetMapping("/pages")
    @ApiOperation("获取分页后的航班信息")
    public ResultResponse getPages(@RequestParam Integer page, @RequestParam Integer pageSize) {
        return flightInfoService.getPages(page, pageSize);
    }

    @PostMapping
    @ApiOperation("添加航班信息")
    public ResultResponse addFlightInfo(@RequestBody FlightInfo flightInfo) {
        return flightInfoService.addFlightInfo(flightInfo);
    }

    @DeleteMapping
    @ApiOperation("删除航班信息")
    public ResultResponse deleteFlightInfo(@RequestParam List<Integer> ids) {
        return flightInfoService.deleteFlightInfo(ids);
    }

    @PutMapping
    @ApiOperation("更新航班信息")
    public ResultResponse updateFlightInfo(@RequestBody FlightInfo flightInfo) {
        return flightInfoService.updateFlightInfo(flightInfo);
    }

    @PostMapping("/search")
    @ApiOperation("查询航班信息")
    public ResultResponse searchFlightInfo(@RequestBody FlightInfo flightInfo) {
        return flightInfoService.searchFlightInfo(flightInfo);
    }
}
