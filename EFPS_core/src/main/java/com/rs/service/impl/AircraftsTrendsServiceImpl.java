package com.rs.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.rs.domain.AircraftsTrends;
import com.rs.domain.PageBean;
import com.rs.exception.pojo.vo.ResultResponse;
import com.rs.service.AircraftsTrendsService;
import com.rs.mapper.AircraftsTrendsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
* @author RWG
* @description 针对表【aircrafts_trends】的数据库操作Service实现
* @createDate 2024-09-03 14:46:45
*/
@Service
public class AircraftsTrendsServiceImpl extends ServiceImpl<AircraftsTrendsMapper, AircraftsTrends>
    implements AircraftsTrendsService{

    @Autowired
    private AircraftsTrendsMapper aircraftsTrendsMapper;
    @Override
    public ResultResponse deleteBatchAircraftsTrends(List<Integer> ids) {
        if (aircraftsTrendsMapper.deleteAircraftsTrends(ids) > 0){
            return ResultResponse.success();
        }else{
            return ResultResponse.error("删除失败");
        }
    }

    @Override
    public ResultResponse updateAircraftsTrends(AircraftsTrends aircraftsTrends) {
        aircraftsTrends.setUpdatetime(new java.util.Date());
        if (aircraftsTrendsMapper.updateAircraftsTrends(aircraftsTrends) > 0) {
            return ResultResponse.success();
        }else{
            return ResultResponse.error("修改失败");
        }
    }

    @Override
    public ResultResponse addAircraftsTrends(AircraftsTrends aircraftsTrends) {
        aircraftsTrends.setCreatetime(new java.util.Date());
        aircraftsTrends.setUpdatetime(new java.util.Date());
        if (aircraftsTrendsMapper.addAircraftsTrends(aircraftsTrends) > 0){
            return ResultResponse.success();
        }else{
            return ResultResponse.error("添加失败");
        }
    }

    @Override
    public ResultResponse searchAircraftsTrends(AircraftsTrends aircraftsTrends) {
        if (aircraftsTrendsMapper.searchAircraftsTrends(aircraftsTrends) != null){
            return ResultResponse.success(aircraftsTrendsMapper.searchAircraftsTrends(aircraftsTrends));
        }else{
            return ResultResponse.error("没有数据");
        }
    }

    @Override
    public ResultResponse getPages(Integer page, Integer pageSize) {
        PageHelper.startPage(page, pageSize);
        List<AircraftsTrends> aircraftsTrends = aircraftsTrendsMapper.getAllAircraftsTrends();
        if (aircraftsTrends == null) {
            return ResultResponse.error("没有找到任何进程单数据");
        }
        PageInfo<AircraftsTrends> pageInfo = new PageInfo<>(aircraftsTrends);
        return ResultResponse.success(new PageBean( pageInfo.getTotal(),pageInfo.getList()));
    }

    @Override
    public ResultResponse getAllAircraftsTrends() {
        List<AircraftsTrends> aircraftsTrends = aircraftsTrendsMapper.getAllAircraftsTrends();
        if (aircraftsTrends == null) {
            return ResultResponse.error("没有找到任何进程单数据");
        }
        return ResultResponse.success(aircraftsTrends);
    }
}




