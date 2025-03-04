package com.rs.service;

import com.rs.domain.SysMsg;
import com.baomidou.mybatisplus.extension.service.IService;
import com.rs.exception.pojo.vo.ResultResponse;

/**
* @author RWG
* @description 针对表【sys_msg】的数据库操作Service
* @createDate 2024-09-03 14:47:16
*/
public interface SysMsgService extends IService<SysMsg> {

    ResultResponse createSysMsg(SysMsg sysMsg);

    ResultResponse deleteSysMsg(Integer[] ids);

    ResultResponse getAllSysMsgs();

    ResultResponse updateSysMsg(SysMsg sysMsg);

    ResultResponse getPageData(Integer pageNum, Integer pageSize);
}
