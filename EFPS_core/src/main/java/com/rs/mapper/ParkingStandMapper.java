package com.rs.mapper;

import com.rs.domain.ParkingStand;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
* @author RWG
* @description 针对表【parking_stand(停机位表)】的数据库操作Mapper
* @createDate 2024-12-06 15:57:57
* @Entity com.rs.domain.ParkingStand
*/
@Mapper
public interface ParkingStandMapper extends BaseMapper<ParkingStand> {

}




