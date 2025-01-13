package com.rs.controller;

import com.rs.controller.base.BaseController;
import com.rs.domain.FlightParkingStand;
import com.rs.service.FlightParkingStandService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Description:
 * @Author: RWG
 * @Date: 2024/12/6:20:55
 */
@RestController
@RequestMapping("/flightParkingStand")
public class FlightParkingStandController extends BaseController<FlightParkingStand, FlightParkingStandService> {
    @Autowired
    public FlightParkingStandController(FlightParkingStandService service){
        super(service, FlightParkingStand.class);
    }
}
