package com.rs.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.rs.domain.FlightInfo;
import com.rs.domain.FlightPlan;
import com.rs.exception.pojo.vo.ResultResponse;
import com.rs.service.FlightPlanService;
import com.rs.mapper.FlightPlanMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.lang.reflect.Field;
import java.util.List;

/**
* @author RWG
* @description 针对表【flight_plan(航班计划表)】的数据库操作Service实现
* @createDate 2024-12-06 15:58:37
*/
@Service
public class FlightPlanServiceImpl extends ServiceImpl<FlightPlanMapper, FlightPlan>
    implements FlightPlanService{

}




