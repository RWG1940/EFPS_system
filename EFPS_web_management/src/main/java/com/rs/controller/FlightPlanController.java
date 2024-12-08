package com.rs.controller;

import com.rs.domain.FlightInfo;
import com.rs.domain.FlightPlan;
import com.rs.exception.pojo.vo.ResultResponse;
import com.rs.service.FlightInfoService;
import com.rs.service.FlightPlanService;
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
 * @Date: 2024/12/6:16:42
 */
@Slf4j
@RestController
@RequestMapping("/flightPlan")
@Api(tags = "航班计划控制器")
@PreAuthorize("hasAuthority('admin') or hasAuthority('emp')")
public class FlightPlanController {
    @Autowired
    private FlightPlanService flightPlanService;

    @GetMapping
    @ApiOperation("获取所有航班计划")
    public ResultResponse getFlightInfo() {
        return ResultResponse.success(flightPlanService.list());
    }

    @GetMapping("/pages")
    @ApiOperation("获取分页后的航班计划")
    public ResultResponse getPages(@RequestParam Integer page, @RequestParam Integer pageSize) {
        return flightPlanService.getPages(page, pageSize);
    }

    @PostMapping
    @ApiOperation("添加航班计划")
    public ResultResponse addFlightInfo(@RequestBody FlightPlan flightPlan) {
        return flightPlanService.addFlightPlan(flightPlan);
    }

    @DeleteMapping
    @ApiOperation("删除航班计划")
    public ResultResponse deleteFlightInfo(@RequestParam List<Integer> ids) {
        return flightPlanService.deleteFlightPlan(ids);
    }

    @PutMapping
    @ApiOperation("更新航班计划")
    public ResultResponse updateFlightInfo(@RequestBody FlightPlan flightPlan) {
        return flightPlanService.updateFlightPlan(flightPlan);
    }

    @PostMapping("/search")
    @ApiOperation("查询航班计划")
    public ResultResponse searchFlightInfo(@RequestBody FlightPlan flightPlan) {
        return flightPlanService.searchFlightPlan(flightPlan);
    }
}
