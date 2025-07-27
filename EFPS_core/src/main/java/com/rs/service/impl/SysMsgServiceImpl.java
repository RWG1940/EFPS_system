package com.rs.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.PageHelper;
import com.rs.domain.Emp;
import com.rs.domain.EmpSys;
import com.rs.domain.PageBean;
import com.rs.domain.SysMsg;
import com.rs.exception.pojo.vo.ResultResponse;
import com.rs.mapper.EmpSysMapper;
import com.rs.service.EmpService;
import com.rs.service.SysMsgService;
import com.rs.mapper.SysMsgMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @author RWG
 * @description 针对表【sys_msg】的数据库操作Service实现
 * @createDate 2024-09-03 14:47:16
 */
@Service
public class SysMsgServiceImpl extends ServiceImpl<SysMsgMapper, SysMsg> implements SysMsgService {
  @Autowired private SysMsgMapper sysMsgMapper;
  @Autowired private EmpSysMapper empSysMapper;
  @Autowired private EmpService empService;

  @Override
  @Transactional
  public ResultResponse createSysMsg(SysMsg sysMsg) {
    QueryWrapper<SysMsg> sysMsgQueryWrapper = new QueryWrapper<>();
    sysMsgQueryWrapper.eq("status", 1);
    sysMsgMapper.delete(sysMsgQueryWrapper);
    if (sysMsgMapper.insert(sysMsg) > 0) {
      Integer insertedId = sysMsg.getId();
      UserDetails userDetails =
          (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
      QueryWrapper<Emp> emp = new QueryWrapper<>();
      emp.eq("e_username", userDetails.getUsername());
      if (empSysMapper.insert(new EmpSys(empService.getOne(emp).getId(), insertedId)) > 0) {
        return ResultResponse.success();
      }
      return ResultResponse.error("添加关联失败");
    }
    return ResultResponse.error("添加消息失败");
  }

  @Override
  public ResultResponse deleteSysMsg(Integer[] ids) {
    if (sysMsgMapper.deleteBatchIds(Arrays.asList(ids)) > 0) {
      return ResultResponse.success();
    }
    return ResultResponse.error("删除失败");
  }

  @Override
  public ResultResponse getAllSysMsgs() {
    UserDetails userDetails =
            (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
    QueryWrapper<Emp> emp = new QueryWrapper<>();
    emp.eq("e_username", userDetails.getUsername());
    Integer eid = empService.getOne(emp).getId();
    List<Integer> msgIds =
        empSysMapper.selectList(Wrappers.<EmpSys>lambdaQuery().eq(EmpSys::geteId, eid)).stream()
            .map(EmpSys::getSysMsgId)
            .collect(Collectors.toList());
    if (msgIds.isEmpty()) {
      return ResultResponse.success("没有找到相关消息");
    }

    List<SysMsg> sysMsgs = sysMsgMapper.selectBatchIds(msgIds);
    if (sysMsgs.isEmpty()) {
      return ResultResponse.success("没有消息");
    }

    return ResultResponse.success(sysMsgs);
  }

  @Override
  public ResultResponse updateSysMsg(SysMsg sysMsg) {
    if (sysMsgMapper.updateById(sysMsg) > 0) {
      return ResultResponse.success();
    }
    return ResultResponse.error("更新失败");
  }

  @Override
  public ResultResponse getPageData(Integer pageNum, Integer pageSize) {
    Page<SysMsg> page = sysMsgMapper.selectPage(new Page<>(pageNum, pageSize), null);
    return ResultResponse.success(new PageBean(page.getTotal(), page.getRecords()));
  }
}


