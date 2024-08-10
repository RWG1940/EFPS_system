package com.rs.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.rs.domain.Menu;
import com.rs.service.MenuService;
import com.rs.mapper.MenuMapper;
import org.springframework.stereotype.Service;

/**
* @author RWG
* @description 针对表【menu】的数据库操作Service实现
* @createDate 2024-08-09 21:12:13
*/
@Service
public class MenuServiceImpl extends ServiceImpl<MenuMapper, Menu>
    implements MenuService{

}




