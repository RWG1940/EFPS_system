package com.rs.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.rs.domain.AlertMsg;
import com.rs.service.AlertMsgService;
import com.rs.mapper.AlertMsgMapper;
import org.springframework.stereotype.Service;

/**
* @author RWG
* @description 针对表【alert_msg】的数据库操作Service实现
* @createDate 2024-09-03 14:46:50
*/
@Service
public class AlertMsgServiceImpl extends ServiceImpl<AlertMsgMapper, AlertMsg>
    implements AlertMsgService{

}




