package com.rs.controller;

import com.rs.controller.base.BaseController;
import com.rs.domain.FlightPlan;
import com.rs.service.FlightPlanService;
import io.swagger.annotations.Api;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @Description:
 * @Author: RWG
 * @Date: 2024/12/6:16:42
 */
@Slf4j
@RestController
@RequestMapping("/flightPlan")
@Api(tags = "航班计划控制器")
public class FlightPlanController extends BaseController<FlightPlan, FlightPlanService> {
    @Autowired
    public FlightPlanController(FlightPlanService service){
        super(service, FlightPlan.class);
    }
}
