package com.rs.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.rs.domain.AreaEfps;
import com.rs.domain.PageBean;
import com.rs.exception.pojo.BizException;
import com.rs.exception.pojo.ExceptionEnum;
import com.rs.exception.pojo.vo.ResultResponse;
import com.rs.service.AreaEfpsService;
import com.rs.mapper.AreaEfpsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author RWG
 * @description 针对表【area_efps】的数据库操作Service实现
 * @createDate 2024-08-21 18:46:39
 */
@Service
public class AreaEfpsServiceImpl extends ServiceImpl<AreaEfpsMapper, AreaEfps>
    implements AreaEfpsService {
  @Autowired private AreaEfpsMapper areaEfpsMapper;

  @Override
  public ResultResponse getAllAreaEfps() {
    List<AreaEfps> areaEfps = areaEfpsMapper.getAllAreaEfps();
    if (areaEfps == null) {
      throw new BizException(ExceptionEnum.NOT_FOUND, "没有找到任何进程单数据");
    }
    return ResultResponse.success(areaEfps);
  }

  @Override
  public ResultResponse getPages(Integer page, Integer pageSize) {
    PageHelper.startPage(page, pageSize);
    List<AreaEfps> areaEfps = areaEfpsMapper.getAllAreaEfps();
    if (areaEfps == null) {
      throw new BizException(ExceptionEnum.NOT_FOUND, "没有找到任何进程单数据");
    }
    PageInfo<AreaEfps> pageInfo = new PageInfo<>(areaEfps);
    return ResultResponse.success(new PageBean(pageInfo.getTotal(), pageInfo.getList()));
  }

  @Override
  public ResultResponse addAreaEfps(AreaEfps areaEfps) {
    areaEfps.setCreatetime(new java.util.Date());
    if (areaEfpsMapper.getAreaEfps(new AreaEfps(areaEfps.getA1())) != null) {
      return ResultResponse.error("该进程单已存在");
    }
    if (areaEfpsMapper.addAreaEfps(areaEfps) > 0) {
      return ResultResponse.success("添加成功");
    } else {
      throw new BizException(ExceptionEnum.INTERNAL_SERVER_ERROR, "添加失败");
    }
  }

  @Override
  public ResultResponse deleteAreaEfps(List<Integer> ids) {
    if (areaEfpsMapper.deleteAreaEfps(ids) > 0) {
      return ResultResponse.success("删除成功");
    } else {
      throw new BizException(ExceptionEnum.INTERNAL_SERVER_ERROR, "删除失败");
    }
  }

  @Override
  public ResultResponse updateAreaEfps(AreaEfps areaEfps) {
    areaEfps.setUpdatetime(new java.util.Date());
    if (areaEfpsMapper.updateAreaEfps(areaEfps) > 0) {
      return ResultResponse.success("修改成功");
    } else {
      throw new BizException(ExceptionEnum.INTERNAL_SERVER_ERROR, "修改失败");
    }
  }

  @Override
  public ResultResponse searchAreaEfps(AreaEfps areaEfps) {
    if (areaEfpsMapper.getAreaEfps(areaEfps) != null) {
      return ResultResponse.success(areaEfpsMapper.getAreaEfps(areaEfps));
    }
    throw new BizException(ExceptionEnum.NOT_FOUND, "没有找到任何进程单数据");
  }
}
