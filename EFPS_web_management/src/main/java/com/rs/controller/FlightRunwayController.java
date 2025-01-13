package com.rs.controller;

import com.rs.controller.base.BaseController;
import com.rs.domain.FlightRunway;
import com.rs.service.FlightRunwayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Description:
 * @Author: RWG
 * @Date: 2024/12/6:21:00
 */
@RestController
@RequestMapping("/flightRunway")
public class FlightRunwayController extends BaseController<FlightRunway, FlightRunwayService> {
    @Autowired
    public FlightRunwayController(FlightRunwayService service){
        super(service, FlightRunway.class);
    }

}
