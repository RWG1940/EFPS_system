package com.rs.service;

import com.rs.domain.TowerEfps;
import com.baomidou.mybatisplus.extension.service.IService;
import com.rs.exception.pojo.vo.ResultResponse;
import org.springframework.stereotype.Service;

import java.util.List;

/**
* @author RWG
* @description 针对表【tower_efps】的数据库操作Service
* @createDate 2024-12-04 21:45:26
*/
public interface TowerEfpsService extends IService<TowerEfps> {

    ResultResponse getPages(Integer page, Integer pageSize);

    ResultResponse addTowerEfps(TowerEfps towerEfps);

    ResultResponse deleteTowerEfps(List<Integer> ids);

    ResultResponse updateTowerEfps(TowerEfps towerEfps);

    ResultResponse searchTowerEfps(TowerEfps towerEfps);
}
