package com.rs.controller;

import com.rs.controller.base.BaseController;
import com.rs.domain.ParkingStand;
import com.rs.service.ParkingStandService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Description:
 * @Author: RWG
 * @Date: 2024/12/6:19:56
 */
@RestController
@RequestMapping("/parkingStand")
public class ParkingStandController extends BaseController<ParkingStand, ParkingStandService> {

    @Autowired
    public ParkingStandController(ParkingStandService parkingStandService) {
        super(parkingStandService);
    }
}
