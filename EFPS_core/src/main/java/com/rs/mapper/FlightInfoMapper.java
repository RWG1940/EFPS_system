package com.rs.mapper;

import com.rs.domain.FlightInfo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
* @author RWG
* @description 针对表【flight_info(航班信息表)】的数据库操作Mapper
* @createDate 2024-12-06 15:58:41
* @Entity com.rs.domain.FlightInfo
*/
@Mapper
public interface FlightInfoMapper extends BaseMapper<FlightInfo> {

}




