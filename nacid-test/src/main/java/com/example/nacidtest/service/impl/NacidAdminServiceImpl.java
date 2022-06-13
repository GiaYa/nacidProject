package com.example.nacidtest.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.nacidtest.entity.NacidAdmin;
import com.example.nacidtest.service.NacidAdminService;
import com.example.nacidtest.mapper.NacidAdminMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
* @author 李旭锴
* @description 针对表【nacid_admin(管理员用户)】的数据库操作Service实现
* @createDate 2022-06-06 09:38:45
*/
@Service
public class NacidAdminServiceImpl extends ServiceImpl<NacidAdminMapper, NacidAdmin>
    implements NacidAdminService{
    @Autowired
    private NacidAdminMapper mapper;
    @Override
    public NacidAdmin loginQuery(NacidAdmin Admin) {
        return mapper.loginQuery(Admin);
    }
    @Override
    public int insertQuery(NacidAdmin Admin) {
        return mapper.inserQuert(Admin);
    }
}




