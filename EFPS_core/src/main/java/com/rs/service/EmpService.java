package com.rs.service;

import com.rs.domain.vo.DeptCount;
import com.rs.domain.Emp;
import com.baomidou.mybatisplus.extension.service.IService;
import com.rs.domain.vo.PageBean;
import com.rs.exception.pojo.vo.ResultResponse;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.List;

/**
* @author RWG
* @description 针对表【emp】的数据库操作Service
* @createDate 2024-07-26 17:17:57
*/
public interface EmpService extends IService<Emp> {

    ResultResponse getAllEmps();

    ResultResponse createEmp(Emp emp);

    ResultResponse updateEmp(Emp emp);

    ResultResponse deleteEmp(Integer id);

    ResultResponse getEmp(Emp emp);

    ResultResponse getEmps(Emp emp);

    ResultResponse page(Integer page,Integer pageSize);

    ResultResponse deleteEmps(List<Integer> ids);

    ResultResponse login(Emp emp);

    ResultResponse register(Emp emp);

    ResultResponse loginByToken();
}
