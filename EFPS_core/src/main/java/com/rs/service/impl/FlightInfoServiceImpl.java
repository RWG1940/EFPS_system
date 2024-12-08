package com.rs.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.rs.domain.FlightInfo;
import com.rs.exception.pojo.vo.ResultResponse;
import com.rs.service.FlightInfoService;
import com.rs.mapper.FlightInfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.lang.reflect.Field;
import java.util.List;

/**
 * @author RWG
 * @description 针对表【flight_info(航班信息表)】的数据库操作Service实现
 * @createDate 2024-12-06 15:58:41
 */
@Service
public class FlightInfoServiceImpl extends ServiceImpl<FlightInfoMapper, FlightInfo>
    implements FlightInfoService {

  @Autowired private FlightInfoMapper flightInfoMapper;

  @Override
  public ResultResponse searchFlightInfo(FlightInfo flightInfo) {
    QueryWrapper<FlightInfo> queryWrapper = new QueryWrapper<>();
    for (Field field : FlightInfo.class.getDeclaredFields()) {
      field.setAccessible(true);
      try {
        Object value = field.get(flightInfo);
        if (value != null && !value.toString().isEmpty()) {
          queryWrapper.like(field.getName(), value);
        }
      } catch (IllegalAccessException e) {
        e.printStackTrace();
      }
    }
    return ResultResponse.success(flightInfoMapper.selectList(queryWrapper));
  }

  @Override
  public ResultResponse updateFlightInfo(FlightInfo flightInfo) {
    if (flightInfoMapper.updateById(flightInfo) > 0) {
      return ResultResponse.success();
    }
    return ResultResponse.error("更新失败");
  }

  @Override
  public ResultResponse deleteFlightInfo(List<Integer> ids) {
    if (flightInfoMapper.deleteBatchIds(ids) > 0) {
      return ResultResponse.success();
    }
    return ResultResponse.error("删除失败");
  }

  @Override
  public ResultResponse addFlightInfo(FlightInfo flightInfo) {
    if (flightInfoMapper.insert(flightInfo)>0){
      return ResultResponse.success();
    }
    return ResultResponse.error("添加失败");
  }

  @Override
  public ResultResponse getPages(Integer page, Integer pageSize) {
    IPage<FlightInfo> resultPage = new Page<>(page,pageSize);
    flightInfoMapper.selectPage(resultPage,null);
    return ResultResponse.success(resultPage);
  }
}
