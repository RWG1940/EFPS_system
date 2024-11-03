package com.rs.controller;

import com.rs.domain.AirspaceEvent;
import com.rs.domain.AreaEfps;
import com.rs.exception.pojo.vo.ResultResponse;
import com.rs.service.AirspaceEventService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Description: @Author: RWG @Date: 2024/11/1:15:54
 */
@Slf4j
@RestController
@RequestMapping("/airspaceEvent")
@Api(tags = "空域事件信息控制器")
public class AirspaceEventController {
  @Autowired
  private AirspaceEventService airspaceEventService;


  @GetMapping
  @ApiOperation("获取所有空域事件信息")
  public ResultResponse getAirspaceEvent() {
    return airspaceEventService.getAllAirspaceEvent();
  }

  @GetMapping("/pages")
  @ApiOperation("获取分页后的空域事件信息")
  public ResultResponse getPages(@RequestParam Integer page, @RequestParam Integer pageSize) {
    return airspaceEventService.getPages(page, pageSize);
  }

  @PostMapping
  @ApiOperation("添加空域事件信息")
  public ResultResponse addAirspaceEvent(@RequestBody AirspaceEvent airspaceEvent) {
    return airspaceEventService.addAirspaceEvent(airspaceEvent);
  }

  @DeleteMapping
  @ApiOperation("删除空域事件信息")
  public ResultResponse deleteAirspaceEvent(@RequestParam List<Integer> ids) {
    return airspaceEventService.deleteAirspaceEvent(ids);
  }

  @PutMapping
  @ApiOperation("更新空域事件信息")
  public ResultResponse updateAirspaceEvent(@RequestBody AirspaceEvent airspaceEvent) {
    return airspaceEventService.updateAirspaceEvent(airspaceEvent);
  }

  @PostMapping("/search")
  @ApiOperation("查询空域事件信息")
  public ResultResponse searchAirspaceEvent(@RequestBody AirspaceEvent airspaceEvent) {
    return airspaceEventService.searchAirspaceEvent(airspaceEvent);
  }
}
