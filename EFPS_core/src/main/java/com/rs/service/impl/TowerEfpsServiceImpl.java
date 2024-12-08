package com.rs.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.rs.domain.TowerEfps;
import com.rs.exception.pojo.vo.ResultResponse;
import com.rs.service.TowerEfpsService;
import com.rs.mapper.TowerEfpsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
* @author RWG
* @description 针对表【tower_efps】的数据库操作Service实现
* @createDate 2024-12-04 21:45:26
*/
@Service
public class TowerEfpsServiceImpl extends ServiceImpl<TowerEfpsMapper, TowerEfps>
    implements TowerEfpsService{
    @Autowired
    private TowerEfpsMapper towerEfpsMapper;
    @Override
    public ResultResponse getPages(Integer page, Integer pageSize) {
        IPage<TowerEfps> resultPage = new Page<>(page,pageSize);
        towerEfpsMapper.selectPage(resultPage,null);
        return ResultResponse.success(resultPage);
    }

    @Override
    public ResultResponse addTowerEfps(TowerEfps towerEfps) {
        towerEfps.setCreatetime(new Date());
        towerEfps.setUpdatetime(new Date());
        if (towerEfpsMapper.insert(towerEfps)>0){
            return ResultResponse.success();
        }
        return ResultResponse.error("添加失败");
    }

    @Override
    public ResultResponse deleteTowerEfps(List<Integer> ids) {
        if (towerEfpsMapper.deleteBatchIds(ids)>0){
            return ResultResponse.success();
        }
        return ResultResponse.error("删除失败");
    }

    @Override
    public ResultResponse updateTowerEfps(TowerEfps towerEfps) {
        towerEfps.setUpdatetime(new Date());
        if (towerEfpsMapper.updateById(towerEfps)>0){
            return ResultResponse.success();
        }
        return ResultResponse.error("更新失败");
    }

    @Override
    public ResultResponse searchTowerEfps(TowerEfps towerEfps) {
        QueryWrapper<TowerEfps> queryWrapper = new QueryWrapper<>(towerEfps);
        List<TowerEfps> towerEfpsList = towerEfpsMapper.selectList(queryWrapper);
        if (towerEfpsList!=null){
            return ResultResponse.success(towerEfpsList);
        }
        return ResultResponse.error("查询失败");
    }
}




