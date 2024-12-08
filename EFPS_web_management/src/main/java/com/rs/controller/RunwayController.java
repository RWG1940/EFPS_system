package com.rs.controller;

import com.rs.controller.base.BaseController;
import com.rs.domain.Runway;
import com.rs.service.RunwayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Description: 跑道控制器
 * @Author: RWG
 * @Date: 2024/12/6:20:52
 */
@RestController
@RequestMapping("/runway")
public class RunwayController extends BaseController<Runway, RunwayService> {
    @Autowired
    public RunwayController(RunwayService runwayService) {
        super(runwayService);
    }
}
