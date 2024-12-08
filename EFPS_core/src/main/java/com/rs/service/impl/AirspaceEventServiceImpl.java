package com.rs.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.rs.domain.AirspaceEvent;
import com.rs.domain.Menu;
import com.rs.domain.PageBean;
import com.rs.exception.pojo.BizException;
import com.rs.exception.pojo.ExceptionEnum;
import com.rs.exception.pojo.vo.ResultResponse;
import com.rs.service.AirspaceEventService;
import com.rs.mapper.AirspaceEventMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
* @author RWG
* @description 针对表【airspace_event】的数据库操作Service实现
* @createDate 2024-11-01 15:53:28
*/
@Service
public class AirspaceEventServiceImpl extends ServiceImpl<AirspaceEventMapper, AirspaceEvent>
    implements AirspaceEventService{

    @Autowired
    private AirspaceEventMapper airspaceEventMapper;

    @Override
    public ResultResponse getAllAirspaceEvent() {
        return ResultResponse.success(airspaceEventMapper.selectList(null));
    }

    @Override
    public ResultResponse getPages(Integer page, Integer pageSize) {
        PageHelper.startPage(page, pageSize);
        List<AirspaceEvent> airspaceEvents = airspaceEventMapper.selectList(null);
        if (airspaceEvents == null){
            throw new BizException(ExceptionEnum.NOT_FOUND,"没有找到任何空域事件信息");
        }
        Page<AirspaceEvent> p = (Page<AirspaceEvent>) airspaceEvents;
        return ResultResponse.success(new PageBean(p.getTotal(), p.getResult()));
    }

    @Override
    public ResultResponse addAirspaceEvent(AirspaceEvent airspaceEvent) {


        airspaceEvent.setCreatetime(new java.sql.Date(System.currentTimeMillis()));
        airspaceEvent.setUpdatetime(new java.sql.Date(System.currentTimeMillis()));
        if (airspaceEventMapper.insert(airspaceEvent) > 0){
            return ResultResponse.success();
        }
        throw new BizException(ExceptionEnum.INTERNAL_SERVER_ERROR,"添加空域事件信息失败");
    }

    @Override
    public ResultResponse updateAirspaceEvent(AirspaceEvent airspaceEvent) {
        if (airspaceEventMapper.updateById(airspaceEvent) > 0){
            return ResultResponse.success();
        }
        throw new BizException(ExceptionEnum.INTERNAL_SERVER_ERROR,"更新空域事件信息失败");
    }

    @Override
    public ResultResponse deleteAirspaceEvent(List<Integer> ids) {
        if (airspaceEventMapper.deleteBatchIds(ids) > 0){
            return ResultResponse.success();
        }
        throw new BizException(ExceptionEnum.INTERNAL_SERVER_ERROR,"删除空域事件信息失败");
    }

    @Override
    public ResultResponse searchAirspaceEvent(AirspaceEvent airspaceEvent) {
        return ResultResponse.success(airspaceEventMapper.getAirspaceEventList(airspaceEvent));
    }
}




