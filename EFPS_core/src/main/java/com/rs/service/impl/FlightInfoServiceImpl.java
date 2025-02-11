package com.rs.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.rs.domain.FlightInfo;
import com.rs.exception.pojo.vo.ResultResponse;
import com.rs.service.FlightInfoService;
import com.rs.mapper.FlightInfoMapper;
import lombok.extern.log4j.Log4j;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.lang.reflect.Field;
import java.util.List;

/**
 * @author RWG
 * @description 针对表【flight_info(航班信息表)】的数据库操作Service实现
 * @createDate 2024-12-06 15:58:41
 */
@Slf4j
@Service
public class FlightInfoServiceImpl extends ServiceImpl<FlightInfoMapper, FlightInfo>
    implements FlightInfoService {

  @Autowired private FlightInfoMapper flightInfoMapper;

  @Override
  public ResultResponse searchFlightInfo(FlightInfo flightInfo) {
    QueryWrapper<FlightInfo> queryWrapper = new QueryWrapper<>();
    log.info("查询条件1：{}", flightInfo);
    for (Field field : FlightInfo.class.getDeclaredFields()) {
      field.setAccessible(true);
      try {
        if ("serialVersionUID".equals(field.getName())) {
          continue; // 排除 serialVersionUID 字段
        }
        Object value = field.get(flightInfo);
        if (value != null && !value.toString().isEmpty()) {
          // 将驼峰命名法转换为下划线命名法
          String columnName = convertToUnderscore(field.getName());
          queryWrapper.like(columnName, value);
        }
      } catch (IllegalAccessException e) {
        e.printStackTrace();
      }
    }
    log.info("查询结果：{}",flightInfoMapper.selectList(queryWrapper));
    return ResultResponse.success(flightInfoMapper.selectList(queryWrapper));
  }
  // 方法：将驼峰命名转换为下划线命名
  private String convertToUnderscore(String camelCase) {
    StringBuilder result = new StringBuilder();
    for (int i = 0; i < camelCase.length(); i++) {
      char c = camelCase.charAt(i);
      if (Character.isUpperCase(c)) {
        if (i > 0) {
          result.append('_');  // 添加下划线分隔符
        }
        result.append(Character.toLowerCase(c));  // 转换为小写字母
      } else {
        result.append(c);
      }
    }
    return result.toString();
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
