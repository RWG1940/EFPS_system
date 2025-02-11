package com.rs.controller;

import com.rs.domain.SysMsg;
import com.rs.exception.pojo.vo.ResultResponse;
import com.rs.service.EmpService;
import com.rs.service.SysMsgService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

/**
 * @FileName: sysMsgController
 * @Date: 2024/9/3:14:56
 * @Description: 系统消息控制器
 * @Author: RWG
 */
@RestController
@Slf4j
@RequestMapping("/sysMsg")
@Api(tags = "系统消息控制器")
@PreAuthorize("hasAuthority('emp')")
public class sysMsgController {
    @Autowired
    private SysMsgService sysMsgService;

    @ApiOperation("创建系统消息")
    @PostMapping()
    public ResultResponse createSysMsg(@RequestBody SysMsg sysMsg){
        return sysMsgService.createSysMsg(sysMsg);
    }
    @DeleteMapping
    @ApiOperation("删除系统消息")
    public ResultResponse deleteSysMsg(@RequestParam Integer[] ids){
        return sysMsgService.deleteSysMsg(ids);
    }
    @GetMapping()
    @ApiOperation("获取所有系统消息")
    public ResultResponse getAllSysMsg(){
        return sysMsgService.getAllSysMsgs();
    }

    @PutMapping()
    @ApiOperation("更新系统消息")
    public ResultResponse updateSysMsg(@RequestBody SysMsg sysMsg){
        return sysMsgService.updateSysMsg(sysMsg);
    }

    // 获取分页数据
    @GetMapping("/pages")
    public ResultResponse getPageData(@RequestParam(defaultValue = "1") Integer pageNum,
                                     @RequestParam(defaultValue = "10") Integer pageSize) {
        return sysMsgService.getPageData(pageNum, pageSize);
    }

}
