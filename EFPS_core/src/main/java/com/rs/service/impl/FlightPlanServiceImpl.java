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

    @Autowired
    private FlightPlanMapper flightPlanMapper;
    @Override
    public ResultResponse getPages(Integer page, Integer pageSize) {
        IPage<FlightPlan> resultPage = new Page<>(page,pageSize);
        flightPlanMapper.selectPage(resultPage,null);
        return ResultResponse.success(resultPage);
    }

    @Override
    public ResultResponse addFlightPlan(FlightPlan flightPlan) {
        if (flightPlanMapper.insert(flightPlan)>0){
            return ResultResponse.success();
        }
        return ResultResponse.error("添加失败");
    }

    @Override
    public ResultResponse deleteFlightPlan(List<Integer> ids) {
        if (flightPlanMapper.deleteBatchIds(ids)>0){
            return ResultResponse.success();
        }
        return ResultResponse.error("删除失败");
    }

    @Override
    public ResultResponse updateFlightPlan(FlightPlan flightPlan) {
        if (flightPlanMapper.updateById(flightPlan)>0){
            return ResultResponse.success();
        }
        return ResultResponse.error("更新失败");
    }

    @Override
    public ResultResponse searchFlightPlan(FlightPlan flightPlan) {
        QueryWrapper<FlightPlan> queryWrapper = new QueryWrapper<>();
        for (Field field : FlightInfo.class.getDeclaredFields()) {
            field.setAccessible(true);
            try {
                Object value = field.get(flightPlan);
                if (value != null && !value.toString().isEmpty()) {
                    queryWrapper.like(field.getName(), value);
                }
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            }
        }
        return ResultResponse.success(flightPlanMapper.selectList(queryWrapper));
    }
}




