package com.rs.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.rs.domain.Dept;
import com.rs.domain.Emp;
import com.rs.domain.PageBean;
import com.rs.service.DeptService;
import com.rs.mapper.DeptMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
* @author RWG
* @description 针对表【dept】的数据库操作Service实现
* @createDate 2024-07-28 12:03:30
*/
@Service
public class DeptServiceImpl extends ServiceImpl<DeptMapper, Dept>
    implements DeptService{

    @Autowired
    private DeptMapper deptMapper;

    @Override
    public List<Dept> getAllDepts() {
        return deptMapper.getAllDepts();
    }

    @Override
    public List<Dept> getDepts(Dept dept) {
        return deptMapper.getDepts(dept);
    }

    @Override
    public PageBean page(Integer page, Integer pageSize) {
        PageHelper.startPage(page,pageSize);
        List<Dept> deptlist = deptMapper.getAllDepts();
        Page<Dept> p = (Page<Dept>) deptlist;
        PageBean pageBean = new PageBean(p.getTotal(),p.getResult());
        return pageBean;
    }

    @Override
    public Dept getDept(Dept dept) {
        return deptMapper.getDept(dept);
    }

    @Override
    public int createDept(Dept dept) {
        return deptMapper.createDept(dept);
    }

    @Override
    public int updateDept(Dept dept) {
        return deptMapper.updateDept(dept);
    }

    @Override
    public int deleteDept(Integer id) {
        return deptMapper.deleteDept(id);
    }

    @Override
    public int deleteDepts(List<Integer> ids) {
        return deptMapper.deleteDepts(ids);
    }
}




