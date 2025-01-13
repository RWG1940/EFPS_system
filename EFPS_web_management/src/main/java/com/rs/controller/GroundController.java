package com.rs.controller;

import com.rs.controller.base.BaseController;
import com.rs.domain.GroundEfps;
import com.rs.service.GroundEfpsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Description:
 * @Author: RWG
 * @Date: 2024/12/6:21:32
 */
@RestController
@RequestMapping("releaseGroundEfps")
public class GroundController extends BaseController<GroundEfps, GroundEfpsService> {
    @Autowired
    public GroundController(GroundEfpsService service){
        super(service,GroundEfps.class);
    }

}
