package com.rs.controller;

import com.rs.domain.AreaEfps;
import com.rs.domain.WebSocketMessage;
import com.rs.exception.pojo.vo.ResultResponse;
import com.rs.service.AreaEfpsService;
import com.rs.websocket.WebSocketServer;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @FileName: AreaEfpsController @Date: 2024/8/24:15:26 @Description: 区域进程单控制器 @Author: RWG
 */
@Slf4j
@RestController
@RequestMapping("/areaEfps")
@Api(tags = "区域进程单控制器")
@PreAuthorize("hasAuthority('admin') or hasAuthority('areaC')")
public class AreaEfpsController {

  @Autowired
  private AreaEfpsService areaEfpsService;

  @Autowired
  private WebSocketServer webSocketServer; // 注入 WebSocketServer

  // 获取所有进程单
  @GetMapping
  @ApiOperation("获取所有进程单")
  public ResultResponse getAreaEfps() {
    return areaEfpsService.getAllAreaEfps();
  }

  // 获取分页后的进程单
  @GetMapping("/pages")
  @ApiOperation("获取分页后的进程单")
  public ResultResponse getPages(@RequestParam Integer page, @RequestParam Integer pageSize) {
    return areaEfpsService.getPages(page, pageSize);
  }

  // 添加进程单
  @PostMapping
  @ApiOperation("添加进程单")
  public ResultResponse addAreaEfps(@RequestBody AreaEfps areaEfps) {
    webSocketServer.sendToAll(new WebSocketMessage(1, 1, "areaEfpsAdded", "sys", System.currentTimeMillis()));
    return areaEfpsService.addAreaEfps(areaEfps);
  }

  // 删除进程单
  @DeleteMapping
  @ApiOperation("删除进程单")
  public ResultResponse deleteAreaEfps(@RequestParam List<Integer> ids) {
    webSocketServer.sendToAll(new WebSocketMessage(1, 1, "areaEfpsDeleted", "sys", System.currentTimeMillis()));
    return areaEfpsService.deleteAreaEfps(ids);
  }

  // 更新进程单
  @PutMapping
  @ApiOperation("更新进程单")
  public ResultResponse updateAreaEfps(@RequestBody AreaEfps areaEfps) {
    log.info("更新");
    webSocketServer.sendToAll(new WebSocketMessage(1, 1, "areaEfpsUpdated", "sys", System.currentTimeMillis()));
    return areaEfpsService.updateAreaEfps(areaEfps);
  }

  // 查询进程单
  @PostMapping("/search")
  @ApiOperation("查询进程单")
  public ResultResponse searchAreaEfps(@RequestBody AreaEfps areaEfps) {
    return areaEfpsService.searchAreaEfps(areaEfps);
  }
}
