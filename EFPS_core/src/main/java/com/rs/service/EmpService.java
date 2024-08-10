package com.rs.service;

import com.rs.domain.vo.DeptCount;
import com.rs.domain.Emp;
import com.baomidou.mybatisplus.extension.service.IService;
import com.rs.domain.vo.PageBean;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.List;

/**
* @author RWG
* @description 针对表【emp】的数据库操作Service
* @createDate 2024-07-26 17:17:57
*/
public interface EmpService extends IService<Emp> {

    List<Emp> getAllEmps();

    int createEmp(Emp emp);

    int updateEmp(Emp emp);

    int deleteEmp(Integer id);

    Emp getEmp(Emp emp);

    List<Emp> getEmps(Emp emp);

    PageBean page(Integer page,Integer pageSize);

    int deleteEmps(List<Integer> ids);

    int deleteEmpBydid(Integer id);

    int deleteEmpsBydids(List<Integer> ids);

    List<DeptCount> findDeptIdCount();

    String login(Emp emp);

    UserDetails getEmpBytoken(String token);

    public List<String> getUserPermissions(Integer empId);
}
