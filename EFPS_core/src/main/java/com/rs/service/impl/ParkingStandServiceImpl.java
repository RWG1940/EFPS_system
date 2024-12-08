package com.rs.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.rs.domain.ParkingStand;
import com.rs.service.ParkingStandService;
import com.rs.mapper.ParkingStandMapper;
import org.springframework.stereotype.Service;

/**
* @author RWG
* @description 针对表【parking_stand(停机位表)】的数据库操作Service实现
* @createDate 2024-12-06 15:57:57
*/
@Service
public class ParkingStandServiceImpl extends ServiceImpl<ParkingStandMapper, ParkingStand>
    implements ParkingStandService{

}




