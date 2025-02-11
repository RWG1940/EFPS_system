package com.rs.controller;

import com.rs.controller.base.BaseController;
import com.rs.domain.AlertMsg;
import com.rs.domain.FlightParkingStand;
import com.rs.service.AlertMsgService;
import com.rs.service.FlightParkingStandService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @FileName: alertMsgController
 * @Date: 2024/9/3:14:57
 * @Description: 警报控制器
 * @Author: RWG
 */
@RestController
@RequestMapping("/alertMsg")
public class AlertMsgController extends BaseController<AlertMsg, AlertMsgService> {
    @Autowired
    public AlertMsgController(AlertMsgService service){
        super(service, AlertMsg.class);
    }
}
