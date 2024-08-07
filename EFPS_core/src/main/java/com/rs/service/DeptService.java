package com.rs.service;

import com.rs.domain.Dept;
import com.baomidou.mybatisplus.extension.service.IService;
import com.rs.domain.vo.PageBean;

import java.util.List;

/**
* @author RWG
* @description 针对表【dept】的数据库操作Service
* @createDate 2024-07-28 12:03:30
*/
public interface DeptService extends IService<Dept> {

    List<Dept> getAllDepts();

    List<Dept> getDepts(Dept dept);

    PageBean page(Integer page, Integer pageSize);

    Dept getDept(Dept dept);

    int createDept(Dept dept);

    int updateDept(Dept dept);

    int deleteDept(Integer id);

    int deleteDepts(List<Integer> ids);

    PageBean getPages(Integer page, Integer pageSize, String token);
}
