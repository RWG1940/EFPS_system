package com.rs.controller;

import com.rs.domain.TowerEfps;
import com.rs.domain.WebSocketMessage;
import com.rs.exception.pojo.vo.ResultResponse;
import com.rs.service.TowerEfpsService;
import com.rs.websocket.WebSocketServer;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @FileName: TowerEfpsController @Date: 2024/8/24:15:26 @Description: 塔台进程单控制器 @Author: RWG
 */
@Slf4j
@RestController
@RequestMapping("/towerEfps")
@Api(tags = "塔台进程单控制器")
@PreAuthorize("hasAuthority('admin') or hasAuthority('towerC')")
public class TowerEfpsController {
    @Autowired private TowerEfpsService towerEfpsService;
    @Autowired private WebSocketServer webSocketServer;

    // 获取所有进程单
    @GetMapping
    @ApiOperation("获取所有进程单")
    public ResultResponse getTowerEfps() {
        return ResultResponse.success(towerEfpsService.list());
    }
    // 获取分页后的进程单
    @GetMapping("/pages")
    @ApiOperation("获取分页后的进程单")
    public ResultResponse getPages(@RequestParam Integer page, @RequestParam Integer pageSize) {
        return towerEfpsService.getPages(page, pageSize);
    }
    // 添加进程单
    @PostMapping
    @ApiOperation("添加进程单")
    public ResultResponse addTowerEfps(@RequestBody TowerEfps towerEfps) {
        webSocketServer.sendToAll(new WebSocketMessage(1, 1, "towerEfpsAdded", "sys", System.currentTimeMillis()));
        return towerEfpsService.addTowerEfps(towerEfps);
    }
    // 删除进程单
    @DeleteMapping
    @ApiOperation("删除进程单")
    public ResultResponse deleteTowerEfps(@RequestParam List<Integer> ids) {
        webSocketServer.sendToAll(new WebSocketMessage(1, 1, "towerEfpsDeleted", "sys", System.currentTimeMillis()));
        return towerEfpsService.deleteTowerEfps(ids);
    }
    // 更新进程单
    @PutMapping
    @ApiOperation("更新进程单")
    public ResultResponse updateTowerEfps(@RequestBody TowerEfps towerEfps) {
        webSocketServer.sendToAll(new WebSocketMessage(1, 1, "towerEfpsUpdated", "sys", System.currentTimeMillis()));
        return towerEfpsService.updateTowerEfps(towerEfps);
    }
    // 查询进程单
    @PostMapping("/search")
    @ApiOperation("查询进程单")
    public ResultResponse searchTowerEfps(@RequestBody TowerEfps towerEfps) {
        return towerEfpsService.searchTowerEfps(towerEfps);
    }
}
