package com.rs.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.rs.domain.Emp;
import com.rs.domain.PageBean;
import com.rs.service.EmpService;
import com.rs.mapper.EmpMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
* @author RWG
* @description 针对表【emp】的数据库操作Service实现
* @createDate 2024-07-26 17:17:57
*/
@Service
public class EmpServiceImpl extends ServiceImpl<EmpMapper, Emp>
    implements EmpService{

    @Autowired
    private EmpMapper empMapper;
    @Override
    public List<Emp> getAllEmps() {
        return empMapper.getAllEmps();
    }

    @Override
    public int createEmp(Emp emp) {
        return empMapper.createEmp(emp);
    }

    @Override
    public int updateEmp(Emp emp) {
        return empMapper.updateEmp(emp);
    }

    @Override
    public int deleteEmp(Integer id) {
        return empMapper.deleteEmp(id);
    }

    @Override
    public Emp getEmp(Emp emp) {
        return empMapper.getEmp(emp);
    }

    @Override
    public List<Emp> getEmps(Emp emp) {
        return empMapper.getEmps(emp);
    }

    @Override
    public PageBean page(Integer page, Integer pageSize) {
        PageHelper.startPage(page,pageSize);
        List<Emp> emplist = empMapper.getAllEmps();
        Page<Emp> p = (Page<Emp>) emplist;
        PageBean pageBean = new PageBean(p.getTotal(),p.getResult());
        return pageBean;
    }

    @Override
    public int deleteEmps(List<Integer> ids) {
        return empMapper.deleteEmps(ids);
    }
}




