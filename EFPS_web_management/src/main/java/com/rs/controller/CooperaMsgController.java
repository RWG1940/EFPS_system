package com.rs.controller;

import com.rs.controller.base.BaseController;
import com.rs.domain.CooperaMsg;
import com.rs.service.CooperaMsgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Description: 协调信息控制器
 * @Author: RWG
 * @Date: 2025/1/29:16:33
 */
@RestController
@RequestMapping("/cooperaMsg")
public class CooperaMsgController extends BaseController<CooperaMsg, CooperaMsgService> {
    @Autowired
    public CooperaMsgController(CooperaMsgService service) {
        super(service, CooperaMsg.class);
    }

}
